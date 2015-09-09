# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150909213145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_sheets", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "car_owner_full_name"
    t.string   "car_owner_address"
    t.string   "car_owner_city"
    t.string   "car_owner_state"
    t.string   "car_owner_email"
    t.string   "car_owner_zip"
    t.string   "car_owner_home_phone"
    t.string   "car_owner_work_phone"
    t.string   "car_owner_fax"
    t.string   "car_owner_find_us"
    t.string   "car_owner_home_hours"
    t.string   "car_owner_work_hours"
    t.string   "car_owner_fax_hours"
    t.string   "ship_to_full_name"
    t.string   "ship_to_address"
    t.string   "ship_to_city"
    t.string   "ship_to_state"
    t.string   "ship_to_email"
    t.string   "ship_to_zip"
    t.string   "ship_to_phone"
    t.string   "ship_to_fax"
    t.string   "ship_to_contact_person"
    t.string   "zcar_type"
    t.string   "zcar_vin"
    t.string   "zcar_year"
    t.string   "zcar_month_built"
    t.string   "zcar_year_built"
    t.boolean  "trans_crossmember"
    t.boolean  "driveshaft"
    t.boolean  "speedometer"
    t.boolean  "vital_liquids"
    t.boolean  "header_set"
    t.boolean  "ac_compressor_mount_kit"
    t.boolean  "ac_hose_kit"
    t.boolean  "high_volume"
    t.integer  "subtotal"
    t.decimal  "sales_tax",               precision: 5, scale: 2
    t.decimal  "total",                   precision: 7, scale: 2
    t.date     "sign_date"
    t.string   "ship_to_countr"
    t.boolean  "same_information"
    t.boolean  "texas_resident"
    t.string   "transmission_type"
    t.string   "transmission_detail"
    t.string   "ls_type"
    t.string   "hole_size"
    t.string   "pilot_diameter"
    t.string   "ls_year"
    t.string   "rh_monies"
    t.boolean  "rh_monies_yes"
    t.string   "pattern_type"
    t.text     "comments"
    t.integer  "amt1"
    t.integer  "amt2"
    t.integer  "amt3"
    t.integer  "amt4"
    t.integer  "amt5"
    t.integer  "amt6"
    t.integer  "amt7"
    t.integer  "amt8"
    t.integer  "amt9"
  end

end
