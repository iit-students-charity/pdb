class Waybill < ApplicationRecord
  belongs_to :stock

  has_one :inventory_card

  accepts_nested_attributes_for :stock
  accepts_nested_attributes_for :inventory_card

  enum waybill_type: {
    purchase: 0,
    sales: 1
  }

  enum host_position: {
    secretary: 0,
    administrator: 1,
    other: 3
  }
end
