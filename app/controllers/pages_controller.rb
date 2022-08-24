class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_bookings = Booking.where(user: current_user)
    @my_current_orders = @my_bookings.reject { |booking| booking.confirmed }
    @my_past_orders = @my_bookings.select { |booking| booking.confirmed }
    # @confirmation_status = @my_bookings.map { |booking| booking.confirmed }
    pokemon_ids = @my_current_orders.map { |booking| booking.pokemon_id }
    pokemon_prices = pokemon_ids.map { |id| Pokemon.find(id).price.to_i }
    @bookings_sum = pokemon_prices.sum
    @my_balance = User.find(current_user.id).balance
    # A voir pour comment on va empêcher un utilisateur d'acheter un Pokémon déjà acheté
    # @bought_by_someone_else = Booking.all.select { |booking| booking.confirmed }
    # Ou : @my_current_orders.where(confirmed: true)
  end
end
