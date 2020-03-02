class CreateScans < ActiveRecord::Migration[5.2]
  def change
    create_table :scans do |t|
      t.string :name
      t.string :product_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
