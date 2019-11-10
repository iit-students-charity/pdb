class CreateInventoryCard < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_cards do |t|
      t.datetime :date
      t.integer :work_equipment_type, null: false
    end
  end
end
