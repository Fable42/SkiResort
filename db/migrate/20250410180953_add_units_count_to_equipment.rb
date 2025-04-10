class AddUnitsCountToEquipment < ActiveRecord::Migration[7.1]
  def change
    add_column :equipment, :units_count, :integer, default: 0, null: false
  end
end
