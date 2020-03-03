class AddPriceToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_monetize :recipes, :price, currency: { present: false }
  end
end
