class AddColumsToTroubles < ActiveRecord::Migration[5.2]
  def change
    add_column :troubles, :impact, :text
    add_column :troubles, :conseils, :text
  end
end
