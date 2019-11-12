class AddInventoryCardRefToWorkEquipment < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_cards, :work_equipment
  end
end
