class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_bookings = Booking.where(user: current_user)
    @pokemon_ids = @my_bookings.map { |booking| booking.pokemon_id }
    @pokemon_prices = @pokemon_ids.map { |id| Pokemon.find(id).price.to_i }
    @bookings_sum = @pokemon_prices.sum
    @my_balance = User.find(current_user.id).balance
  end
end
