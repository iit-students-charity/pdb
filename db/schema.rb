# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_11_152342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_cards", force: :cascade do |t|
    t.datetime "date"
    t.integer "count"
    t.bigint "waybill_id"
    t.bigint "work_equipment_id"
    t.index ["waybill_id"], name: "index_inventory_cards_on_waybill_id"
    t.index ["work_equipment_id"], name: "index_inventory_cards_on_work_equipment_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.string "number", null: false
    t.string "name", null: false
    t.string "phone", null: false
  end

  create_table "stocks_waybills", force: :cascade do |t|
    t.bigint "waybill_id"
    t.bigint "stock_id"
    t.index ["stock_id"], name: "index_stocks_waybills_on_stock_id"
    t.index ["waybill_id"], name: "index_stocks_waybills_on_waybill_id"
  end

  create_table "waybills", force: :cascade do |t|
    t.string "host_name"
    t.integer "host_position", null: false
    t.integer "waybill_type", null: false
  end

  create_table "work_equipments", force: :cascade do |t|
    t.string "work_equipment_type", null: false
  end

end
