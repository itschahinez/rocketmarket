class RenameColumnInPastOrders < ActiveRecord::Migration[7.0]
  def change
    rename_column :past_orders, :type, :pokemon_type
  end
end
