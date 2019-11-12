class Stock < ApplicationRecord
  has_many :work_equipments
  has_many :waybills

  def number_in_stock(equipment)
    all = waybills.joins(:inventory_card).where(inventory_cards: { work_equipment_id: equipment.id })
    total = 0
    all.where(waybill_type: :sales).each { |bill| total += bill.inventory_card.count }
    all.where(waybill_type: :purchase).each { |bill| total -= bill.inventory_card.count }
    total
  end
end
