class CorrectReferencesNames < ActiveRecord::Migration[7.0]
  def change
    remove_reference :bookings, :pokemons, index: true, foreign_key: true
    remove_reference :bookings, :users, index: true, foreign_key: true
    add_reference :bookings, :pokemon, index: true, foreign_key: true
    add_reference :bookings, :user, index: true, foreign_key: true
  end
end
