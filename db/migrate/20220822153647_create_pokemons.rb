class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.string :type
      t.text :description
      t.string :price
      t.references :seller, null: false, foreign_key: {to_table: :users}
      t.string :picture

      t.timestamps
    end
  end
end
