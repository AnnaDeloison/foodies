class RemovePriceFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :price
  end
end
