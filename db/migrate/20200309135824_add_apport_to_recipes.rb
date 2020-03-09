class AddApportToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :apport, :string
  end
end
