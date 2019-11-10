class Stock < ApplicationRecord
  has_many :work_equipments
  has_and_belongs_to_many :waybills, required: false
end
