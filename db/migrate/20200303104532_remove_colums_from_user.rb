class RemoveColumsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :street_name
    remove_column :users, :street_number
    remove_column :users, :zip_code
    remove_column :users, :city
    remove_column :users, :phone_number
  end
end
