class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @user = current_user
    @pokemon = Pokemon.find(params[:pokemon_id])
    @booking = Booking.new(booking_params)
    @booking.pokemon = @pokemon
    @booking.user = @user
    if @booking.save
      redirect_to dashboard_path
    else
      render "pokemons/:id/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:confirmed, :user_id, :pokemon_id)
  end

  def set_user
  end

  def user_params
  end
end
