class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_pokemon, only: [ :show, :destroy ]

  def index
    already_sold = Booking.all.select { |booking| booking.confirmed }
    @unavailable_pokemons = already_sold.map { |booking| booking.pokemon }

    if params[:query].present?
      sql_query = "name ILIKE :query OR pokemon_type ILIKE :query"
      @pokemons = Pokemon.where(sql_query, query: "%#{params[:query]}%")
    else
      @pokemons = Pokemon.all
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    if current_user.admin?
      @pokemon = Pokemon.new
    else
      redirect_to pokemons_path
    end
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.save!
    # raise
    redirect_to pokemon_path(@pokemon)
  end

  def destroy
    if user_signed_in? && current_user.admin?
      @pokemon = Pokemon.find(params[:id])
      if @pokemon.booking
        flash[:alert] = "You cannot delete this pokemon because it has been booked by #{@pokemon.booking.user.username}"
      else
        @pokemon.destroy
      end
    end
    redirect_to root_path, status: :see_other
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :pokemon_type, :description, :picture, :level, :price)
  end
end
