# typed: strict

class Equipment < ApplicationRecord
  delegated_type :storable, types: %w[ Snowboard Ski Helmet ], dependent: :destroy
  has_many :units, class_name: "EquipmentUnit", dependent: :destroy
end
