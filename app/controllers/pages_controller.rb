class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_bookings = Booking.where(user: current_user)
    @current_orders = @my_bookings.reject { |booking| booking.confirmed }
    @past_orders = @my_bookings.select { |booking| booking.confirmed }
    # @confirmation_status = @my_bookings.map { |booking| booking.confirmed }
    pokemon_ids = @current_orders.map { |booking| booking.pokemon_id }
    pokemon_prices = pokemon_ids.map { |id| Pokemon.find(id).price.to_i }
    @bookings_sum = pokemon_prices.sum
    @my_balance = User.find(current_user.id).balance

    # def confirm
    #   @my_bookings = Booking.where(user: current_user)
    #   @my_bookings.each do |booking|
    #     booking.confirmed = true
    #   end
    # end
  end
end
