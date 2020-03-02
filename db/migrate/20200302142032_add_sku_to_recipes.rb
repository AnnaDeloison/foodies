class AddSkuToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :sku, :string
  end
end
