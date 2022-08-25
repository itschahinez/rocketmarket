class PokemonsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_pokemon, only: [ :show, :create, :destroy ]

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
  end

  def create
  end

  def destroy
  end

  private

  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
  end
end
