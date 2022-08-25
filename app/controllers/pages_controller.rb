class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_bookings = Booking.where(user: current_user)
    @my_current_orders = @my_bookings.reject { |booking| booking.confirmed }
    @my_past_orders = @my_bookings.select { |booking| booking.confirmed }
    pokemon_ids = @my_current_orders.map { |booking| booking.pokemon_id }
    pokemon_prices = pokemon_ids.map { |id| Pokemon.find(id).price.to_i }
    @bookings_sum = pokemon_prices.sum
    @my_balance = User.find(current_user.id).balance
  end
end
