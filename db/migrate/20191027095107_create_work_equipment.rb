class CreateWorkEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :work_equipments do |t|
      t.integer :type, null: false
      t.references :stock
    end
  end
end
