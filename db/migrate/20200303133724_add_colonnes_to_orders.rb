class AddColonnesToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :state, :string
    add_column :orders, :recipe_sku, :string
    add_monetize :orders, :amount, currency: { present: false }
    add_column :orders, :checkout_session_id, :string
  end
end
