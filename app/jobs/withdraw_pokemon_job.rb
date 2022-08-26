class WithdrawPokemonJob < ApplicationJob
  queue_as :default

  def perform(booking)
    booking.destroy unless booking.confirmed
  end
end
