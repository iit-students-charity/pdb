class CreateStocksWaybills < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks_waybills do |t|
      t.belongs_to :waybill
      t.belongs_to :stock
    end
  end
end
