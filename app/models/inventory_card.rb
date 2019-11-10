class InventoryCard < ApplicationRecord
  belongs_to :waybill
  has_many :work_equipments

  accepts_nested_attributes_for :work_equipments
end
