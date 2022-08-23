class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :balance, :integer
    add_column :users, :admin, :boolean
    add_column :users, :picture, :string
  end
end
