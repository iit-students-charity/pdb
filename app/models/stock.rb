class Stock < ApplicationRecord
  has_many :waybills, dependent: :destroy

  def number_in_stock(equipment)
    total = 0
    waybills.joins(:inventory_card)
            .where(waybill_type: :sales,
                   inventory_cards: { work_equipment_id: equipment.id })
            .each { |bill| total -= bill.inventory_card.count }
    waybills.joins(:inventory_card)
            .where(waybill_type: :purchase,
                   inventory_cards: { work_equipment_id: equipment.id })
            .each { |bill| total += bill.inventory_card.count }
    total
  end
end
