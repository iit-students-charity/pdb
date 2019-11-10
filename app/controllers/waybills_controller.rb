class WaybillsController < ApplicationController
  def index
    @waybills = Waybill.all
  end

  def new
    @waybill = Waybill.new
  end

  def create
    Waybill.create(waybill_params)
    redirect_to waybills_path
  end

  def edit
    waybill
  end

  def update
    waybill.update(waybill_params)
    redirect_to waybills_path
  end

  def destroy
    waybill.destroy
    redirect_to waybills_path
  end

  private

  def waybill_params
    params.require(:waybill)
          .permit(:date,
                  :host_name,
                  :host_position,
                  :waybill_type,
                  stock_ids: [],
                  inventory_card_attributes: %i[id date count work_equipment_ids])
  end

  def waybill
    @waybill ||= Waybill.find(params[:id])
  end
end
