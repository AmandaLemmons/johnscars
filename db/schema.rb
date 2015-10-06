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

ActiveRecord::Schema.define(version: 20151006234533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_sheets", force: :cascade do |t|
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
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
    t.decimal  "sales_tax",                 precision: 10, scale: 2
    t.decimal  "total",                     precision: 7,  scale: 2
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
    t.string   "car_owner_countr"
    t.integer  "mount_set",                                          default: 295
    t.string   "ls_type2"
    t.string   "car_owner_where_find_us"
    t.boolean  "zcar_type2"
    t.boolean  "q45"
    t.boolean  "other_differential_flange"
    t.string   "output_shaft"
  end

  create_table "quarterbreeds", force: :cascade do |t|
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
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
    t.string   "jaguar_type"
    t.string   "jaguar_vin"
    t.string   "jaguar_year"
    t.string   "jaguar_month_built"
    t.string   "jugaur_year_built"
    t.string   "engine_number"
    t.string   "engine_type"
    t.string   "tire_size"
    t.string   "tire_radius"
    t.string   "rear_axie_ratio"
    t.string   "speedo_number"
    t.string   "jaguar_trans"
    t.boolean  "flywheel_core"
    t.boolean  "draveshaft"
    t.integer  "flywheel_core_amt"
    t.integer  "driveshaft_amt"
    t.integer  "quarterbreed_kit"
    t.decimal  "credit",                  precision: 10, scale: 2
    t.decimal  "subtotal",                precision: 10, scale: 2
    t.decimal  "sales_tex",               precision: 10, scale: 2
    t.boolean  "texas_resident"
    t.boolean  "same_information"
    t.integer  "expedite"
    t.decimal  "total",                   precision: 10, scale: 2
    t.text     "comments"
    t.string   "car_owner_countr"
    t.string   "ship_to_countr"
    t.string   "car_owner_where_find_us"
    t.string   "other_speedo"
  end

  create_table "tr7s", force: :cascade do |t|
    t.string  "car_owner_full_name"
    t.string  "car_owner_address"
    t.string  "car_owner_city"
    t.string  "car_owner_state"
    t.string  "car_owner_email"
    t.string  "car_owner_zip"
    t.string  "car_owner_home_phone"
    t.string  "car_owner_work_phone"
    t.string  "car_owner_fax"
    t.string  "car_owner_find_us"
    t.string  "car_owner_home_hours"
    t.string  "car_owner_work_hours"
    t.string  "car_owner_fax_hours"
    t.string  "ship_to_full_name"
    t.string  "ship_to_address"
    t.string  "ship_to_city"
    t.string  "ship_to_state"
    t.string  "ship_to_email"
    t.string  "ship_to_zip"
    t.string  "ship_to_phone"
    t.string  "ship_to_fax"
    t.string  "ship_to_contact_person"
    t.string  "tr7s_type"
    t.string  "tr7s_vin"
    t.string  "tr7s_year"
    t.string  "tr7s_month_built"
    t.string  "tr7s_year_built"
    t.string  "tr7s_engine"
    t.string  "tr7s_ac"
    t.string  "tr7s_transmission_type"
    t.string  "tr7s_rear_axle_ratio"
    t.string  "tr7s_tire_size"
    t.boolean "tr7s_expansion_tank"
    t.string  "buick_v6_engine"
    t.string  "buick_v6_year"
    t.string  "buick_v6_freon"
    t.string  "buick_v6_freon_other"
    t.string  "buick_v6_trans"
    t.string  "buick_v6_tailhousing_length"
    t.string  "buick_v6_manual"
    t.string  "buick_v6_trans_year"
    t.boolean "tr7s_kit"
    t.boolean "ac_hoses"
    t.boolean "jci_headers"
    t.boolean "fuel_injection_vc"
    t.boolean "driveshaft_adaptor"
    t.boolean "electrolock"
    t.string  "other_kit_options"
    t.integer "credit_amt"
    t.string  "credit_description"
    t.decimal "subtotal",                    precision: 10, scale: 2
    t.decimal "freight",                     precision: 10, scale: 2
    t.decimal "sales_tax",                   precision: 10, scale: 2
    t.decimal "total",                       precision: 10, scale: 2
    t.string  "buick_v6_cid"
    t.string  "comments"
    t.string  "same_information"
  end

end
