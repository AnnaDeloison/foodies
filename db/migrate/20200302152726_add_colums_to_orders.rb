class AddColumsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :street_name, :string
    add_column :orders, :street_number, :string
    add_column :orders, :city, :string
    add_column :orders, :zip_code, :string
  end
end
