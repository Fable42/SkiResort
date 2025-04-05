class Equipment < ApplicationRecord
  delegated_type :storable, types: %w[ Snowboard Ski ], dependent: :destroy
end
