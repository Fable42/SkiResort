# typed: strict

class EquipmentUnit < ApplicationRecord
  belongs_to :equipment, counter_cache: :units_count
  has_many :geo_positions
end
