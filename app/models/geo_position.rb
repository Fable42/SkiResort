# typed: strict

class GeoPosition < ApplicationRecord
  belongs_to :unit, class_name: "EquipmentUnit", foreign_key: :equipment_unit_id

  validates :longitude, :latitude, presence: true
end
