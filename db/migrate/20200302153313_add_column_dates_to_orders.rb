class AddColumnDatesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_date, :date
    add_column :orders, :order_hour, :string
  end
end
