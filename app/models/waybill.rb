class Waybill < ApplicationRecord
  belongs_to :stock

  has_many :work_equipments

  accepts_nested_attributes_for :stock

  enum waybill_type: {
    purchase_invoice: 0,
    sales_invoice: 1
  }

  enum host_position: {
    secretary: 0,
    administrator: 1,
    other: 3
  }
end
