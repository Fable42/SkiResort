class CreateSki < ActiveRecord::Migration[7.1]
  def change
    create_table :skis do |t|
      t.decimal :sidecut_radius, null: false
      t.integer :waist_width, null: false
      t.string :binding_type, null: false
      t.boolean :is_twin_tip, null: false
      t.string :core_type, null: false
      t.integer :recommended_min_weight, null: false
      t.integer :recommended_max_weight, null: false

      t.timestamps
    end
  end
end
