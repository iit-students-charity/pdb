class InventoryCard < ApplicationRecord
  belongs_to :waybill
  belongs_to :work_equipment

  accepts_nested_attributes_for :work_equipment
end
