class CreateGeoPositions < ActiveRecord::Migration[7.1]
  def change
    create_table :geo_positions do |t|
      t.decimal :latitude, precision: 10, scale: 6, null: false
      t.decimal :longitude, precision: 10, scale: 6, null: false

      t.references :equipment_unit, type: :uuid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
