class AddWaybillRefToStocks < ActiveRecord::Migration[5.2]
  def change
    add_reference :waybills, :stock
  end
end
