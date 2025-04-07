class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all.to_a
  end
end
