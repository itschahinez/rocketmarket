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
      booking.confirmed = true
      booking.save
    end
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_user
  end

  def user_params
  end
end
