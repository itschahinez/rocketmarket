class RenameCartsToPastOrders < ActiveRecord::Migration[7.0]
  def change
    rename_table :carts, :past_orders
  end
end
