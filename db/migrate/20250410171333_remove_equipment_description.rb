class RemoveEquipmentDescription < ActiveRecord::Migration[7.1]
  def change
    remove_column :equipment, :description, :string
  end
end
