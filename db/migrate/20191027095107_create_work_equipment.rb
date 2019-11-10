class CreateWorkEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :work_equipments do |t|
      t.string :work_equipment_type, null: false, uniq: true
    end
  end
end
