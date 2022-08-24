class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(user: current_user, confirmed: false, pokemon: @pokemon)
    if @booking.save
      DestroyBookingJob.set(wait: 1.minute).perform_later(@booking)
      redirect_to pokemon_path(@pokemon)
    else
      render "pokemons/show", status: :unprocessable_entity
    end
  end

  def confirm
    @my_bookings = Booking.where(user: current_user)
    @my_bookings.each do |booking|
      booking.confirmed = true
      booking.save
    end
    @bookings_sum = 0
    redirect_to pokemons_path
  end

  private

  def set_user
  end

  def user_params
  end
end
