class WorkEquipmentsController < ApplicationController
  def index
    @work_equipments = WorkEquipment.all
  end

  def new
    @work_equipment = WorkEquipment.new
  end

  def create
    WorkEquipment.create(work_equipment_params)
    redirect_to work_equipments_path
  end

  def edit
    work_equipment
  end

  def update
    work_equipment.update(work_equipment_params)
    redirect_to work_equipments_path
  end

  def destroy
    work_equipment.destroy
    redirect_to work_equipments_path
  end

  private

  def work_equipment_params
    params.require(:work_equipment).permit(:work_equipment_type)
  end

  def work_equipment
    @work_equipment ||= WorkEquipment.find(params[:id])
  end
end
