class Stock < ApplicationRecord
  has_many :work_equipments
  has_many :waybills
end
