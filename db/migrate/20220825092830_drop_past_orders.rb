class DropPastOrders < ActiveRecord::Migration[7.0]
  def change
    drop_table :past_orders
  end
end
