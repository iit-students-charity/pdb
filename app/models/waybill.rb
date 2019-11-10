class Waybill < ApplicationRecord
  has_many :work_equipments

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
