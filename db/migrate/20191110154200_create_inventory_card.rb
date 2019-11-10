class CreateInventoryCard < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_cards do |t|
      t.datetime :date
      t.integer :count
      t.references :waybill
    end
  end
end
