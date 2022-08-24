class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(user: current_user, confirmed: false, pokemon: @pokemon)
    if @booking.save
      redirect_to dashboard_path
    else
      render "pokemons/show", status: :unprocessable_entity
    end
  end

  def confirm
    @my_bookings = Booking.where(user: current_user)
    @my_bookings.each do |booking|
      pokemon = booking.pokemon
      booking.confirmed = true
      PastOrder.new(booking_id: booking.id, name: pokemon.name, price: pokemon.price, level: pokemon.level, picture: pokemon.picture, description: pokemon.description, pokemon_type: pokemon.pokemon_type).save!
      pokemon.update!(price: 0)
      booking.save
    end
    redirect_to dashboard_path
  end

  private

  def set_user
  end

  def user_params
  end
end
