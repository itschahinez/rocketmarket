class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    # raise
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(user: current_user, confirmed: false, pokemon: @pokemon)
    if @booking.save
      DestroyBookingJob.set(wait: 1.minute).perform_later(@booking)
      redirect_to pokemon_path(@pokemon)
    else
      render "pokemons/show", status: :unprocessable_entity
    end
  end

  private

  def set_user
  end

  def user_params
  end
end
