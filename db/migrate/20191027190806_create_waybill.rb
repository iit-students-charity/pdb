class CreateWaybill < ActiveRecord::Migration[5.2]
  def change
    create_table :waybills do |t|
      t.string :host_name
      t.integer :host_position, null: false
      t.integer :waybill_type, null: false
    end
  end
end
