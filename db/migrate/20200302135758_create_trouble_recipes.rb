class CreateTroubleRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :trouble_recipes do |t|
      t.references :recipe, foreign_key: true
      t.references :trouble, foreign_key: true

      t.timestamps
    end
  end
end
