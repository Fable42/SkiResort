class CreateEquipment < ActiveRecord::Migration[7.1]
  def change
    create_table :equipment do |t|
      t.string :storable_type, null: false
      t.integer :storable_id, null: false
      t.string :size, null: false
      t.string :color, null: false
      t.string :brand, null: false
      t.string :model, null: false
      t.string :article_number, null: false
      t.text :description, null: false
      t.string :material, null: false
      t.integer :weight, null: false
      t.string :purpose, null: false

      t.timestamps
    end
  end
end
