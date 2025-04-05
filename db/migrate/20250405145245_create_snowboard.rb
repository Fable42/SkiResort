class CreateSnowboard < ActiveRecord::Migration[7.1]
  def change
    create_table :snowboards do |t|
      t.string :shape, null: false
      t.string :flex, null: false
      t.string :profile, null: false
      t.integer :recommended_min_weight, null: false
      t.integer :recommended_max_weight, null: false

      t.timestamps
    end
  end
end
