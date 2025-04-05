module Storable
  extend ActiveSupport::Concern

  included do
    has_one :equipment, as: :storable, touch: true
  end
end
