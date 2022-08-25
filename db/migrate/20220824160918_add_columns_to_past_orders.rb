class AddColumnsToPastOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :past_orders, :name, :string
    add_column :past_orders, :level, :integer
    add_column :past_orders, :type, :string
    add_column :past_orders, :description, :text
    add_column :past_orders, :price, :integer
    add_column :past_orders, :picture, :string
  end
end
