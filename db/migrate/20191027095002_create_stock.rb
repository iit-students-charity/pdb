class CreateStock < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :number, null: false
      t.string :name, null: false
      t.string :phone, null: false
    end
  end
end
