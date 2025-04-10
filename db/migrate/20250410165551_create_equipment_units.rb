class CreateEquipmentUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :equipment_units, id: :uuid do |t|
      t.string :location, null: false
      t.string :rent_status, null: false
      t.string :condition, null: false

      t.references :equipment, null: false
      t.timestamps
    end
  end
end
