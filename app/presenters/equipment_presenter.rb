# typed: strict

class EquipmentPresenter
  extend T::Sig

  class EquipmentAttributes < T::Struct
    const :id, Integer
    const :type, String
    const :article_number, String
    const :brand, String
    const :model, String
    const :color, String
    const :size, String
    const :material, String
    const :weight, Integer
    const :purpose, String
    const :units_count, T.nilable(Integer)
  end

  def equipment_attributes_list(equipment_list)
    equipment_list.map do |equipment|
      equipment_attributes(equipment)
    end
  end

  def equipment_attributes(equipment, storable: nil)
    EquipmentAttributes.new(
      id: equipment.id,
      type: equipment.storable_type,
      article_number: equipment.article_number,
      brand: equipment.brand,
      model: equipment.model,
      color: equipment.color,
      size: equipment.size,
      material: equipment.material,
      weight: equipment.weight,
      purpose: equipment.purpose,
      units_count: equipment.units_count
    )
  end
end
