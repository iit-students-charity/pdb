class CreateWaybill < ActiveRecord::Migration[5.2]
  def change
    create_table :waybills do |t|
      t.datetime :date
      t.string :host_name
      t.integer :host_position, null: false
      t.integer :waybill_type, null: false
      t.references :stock
    end
  end
end
