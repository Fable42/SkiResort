class EquipmentController < ApplicationController
  def index
    @equipment = EquipmentPresenter.new.equipment_attributes_list(Equipment.all)
  end

  def show
    @equipment = Equipment.preload(:storable, :units).find(params[:id])
  end
end
