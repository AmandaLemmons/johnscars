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

ActiveRecord::Schema.define(version: 20160402075702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datsun_zars", force: :cascade do |t|
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
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
    t.string   "car_owner_country"
    t.string   "car_owner_where_find_us"
    t.string   "ship_to_full_name"
    t.string   "ship_to_address"
    t.string   "ship_to_city"
    t.string   "ship_to_state"
    t.string   "ship_to_email"
    t.string   "ship_to_zip"
    t.string   "ship_to_phone"
    t.string   "ship_to_fax"
    t.string   "ship_to_contact_person"
    t.string   "ship_to_country"
    t.boolean  "same_information",                                           default: false
    t.string   "comments"
    t.string   "type"
    t.string   "vin"
    t.string   "year"
    t.string   "month_built"
    t.string   "year_built"
    t.string   "engine"
    t.string   "rear_axle"
    t.string   "tire_size"
    t.string   "power_steering"
    t.integer  "zcar_kit"
    t.boolean  "tach_calibration",                                           default: false
    t.boolean  "tach_calibration_without_smog",                              default: false
    t.boolean  "ramshorn_w_smog",                                            default: false
    t.boolean  "ramshorn_w_egr_smog",                                        default: false
    t.boolean  "driveshaft_except_t400",                                     default: false
    t.boolean  "driveshaft_t400",                                            default: false
    t.boolean  "radiator",                                                   default: false
    t.boolean  "electric_fan",                                               default: false
    t.boolean  "electrolock_t700",                                           default: false
    t.boolean  "other",                                                      default: false
    t.decimal  "credit_amt",                                                 default: 0.0
    t.decimal  "tach_calibration_amt",              precision: 10, scale: 2
    t.decimal  "tach_calibration_without_smog_amt", precision: 10, scale: 2
    t.decimal  "ramshorn_w_smog_amt",               precision: 10, scale: 2
    t.decimal  "ramshorn_w_egr_smog_amt",           precision: 10, scale: 2
    t.decimal  "driveshaft_except_t400_amt",        precision: 10, scale: 2
    t.decimal  "driveshaft_t400_amt",               precision: 10, scale: 2
    t.decimal  "radiator_amt",                      precision: 10, scale: 2
    t.decimal  "electric_sfan_amt",                 precision: 10, scale: 2
    t.decimal  "electrolock_t700_amt",              precision: 10, scale: 2
    t.decimal  "other_amt",                         precision: 10, scale: 2
    t.string   "credit_description"
    t.decimal  "subtotal",                          precision: 10, scale: 2
    t.decimal  "expedite",                          precision: 10, scale: 2
    t.decimal  "sales_tax",                         precision: 10, scale: 2
    t.decimal  "total",                             precision: 10, scale: 2
  end

  create_table "etype_v12s", force: :cascade do |t|
    t.datetime "created_at",                                                              null: false
    t.datetime "updated_at",                                                              null: false
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
    t.string   "car_owner_country"
    t.string   "car_owner_where_find_us"
    t.string   "ship_to_full_name"
    t.string   "ship_to_address"
    t.string   "ship_to_city"
    t.string   "ship_to_state"
    t.string   "ship_to_email"
    t.string   "ship_to_zip"
    t.string   "ship_to_phone"
    t.string   "ship_to_fax"
    t.string   "ship_to_contact_person"
    t.string   "ship_to_country"
    t.string   "etype_cyl"
    t.string   "etype_car_type"
    t.string   "vin"
    t.string   "year"
    t.string   "engine_number"
    t.string   "carburetors"
    t.string   "trans"
    t.string   "tire_size"
    t.string   "tire_radius"
    t.string   "rear_axl_ratio"
    t.string   "rear_axl_ratio_other"
    t.string   "speedo_number"
    t.string   "speedo_number_other"
    t.boolean  "motor_missing"
    t.boolean  "motor_burned"
    t.boolean  "right_hand_drive"
    t.boolean  "auto_trans_kit",                                          default: false
    t.integer  "auto_trans_kit_amt"
    t.boolean  "manual_tras_kit",                                         default: false
    t.integer  "manual_tras_kit_amt"
    t.boolean  "tach_calibration",                                        default: false
    t.integer  "tach_calibration_amt"
    t.boolean  "fuel_injection_v8",                                       default: false
    t.integer  "fuel_injection_v8_amt"
    t.boolean  "overdrive",                                               default: false
    t.integer  "overdrive_amt"
    t.decimal  "credit_amt",                                              default: 0.0
    t.string   "credit_description"
    t.decimal  "subtotal",                       precision: 10, scale: 2
    t.decimal  "freight",                        precision: 10, scale: 2
    t.decimal  "sales_tax",                      precision: 10, scale: 2
    t.decimal  "total",                          precision: 10, scale: 2
    t.boolean  "same_information",                                        default: true
    t.text     "comments"
    t.string   "driveline_engine"
    t.string   "driveline_year"
    t.string   "driveline_cid"
    t.string   "donar_car"
    t.string   "donar_car_other"
    t.string   "driveline_trans"
    t.string   "driveline_trans_year"
    t.string   "tailhousing_length"
    t.string   "how_get_trans"
    t.string   "ac_refrigerant"
    t.string   "ac_refrigerant_other"
    t.string   "battery_type"
    t.string   "fan_belts"
    t.boolean  "some_carb_v8",                                            default: false
    t.boolean  "most_carb_v8",                                            default: false
    t.boolean  "truck_tbi",                                               default: false
    t.boolean  "camaro_lt1",                                              default: false
    t.boolean  "corvette_lt4",                                            default: false
    t.boolean  "other_front_view",                                        default: false
    t.boolean  "compressor_a6",                                           default: false
    t.boolean  "compressor_r4",                                           default: false
    t.boolean  "compressor_da6",                                          default: false
    t.boolean  "compressor_nd",                                           default: false
    t.boolean  "plug_a6",                                                 default: false
    t.boolean  "plug_r4",                                                 default: false
    t.boolean  "plug_da6",                                                default: false
    t.boolean  "plug_nd",                                                 default: false
    t.boolean  "alternator_plug_type2",                                   default: false
    t.boolean  "alternator_plug_type3",                                   default: false
    t.boolean  "alternator_plug_type1",                                   default: false
    t.boolean  "ignition_plug_type1",                                     default: false
    t.boolean  "ignition_plug_type2",                                     default: false
    t.boolean  "ignition_plug_type3",                                     default: false
    t.string   "engine_fuel_injection"
    t.string   "engine_fuel_injection_other"
    t.string   "engine_donor_car"
    t.string   "engine_donor_car_other"
    t.string   "engine_tpi_lt1"
    t.string   "engine_ps_pump_location"
    t.string   "engine_ps_pump_outlet"
    t.string   "engine_corvette_nut_size"
    t.string   "engine_corvette_diameter"
    t.string   "engine_tbi_thermostat"
    t.string   "accessories_fan"
    t.string   "accessories_water_pump"
    t.string   "accessories_fan_belts"
    t.string   "accessories_air_pump"
    t.string   "accessories_valve_covers"
    t.string   "accessories_ac_refrigerant"
    t.string   "miscellaneous_fi_harness"
    t.string   "miscellaneous_fi_harness_other"
    t.boolean  "miscellaneous_oil_switch",                                default: false
    t.string   "miscellaneous_speedo_type"
    t.string   "miscellaneous_t700_lockup"
    t.string   "miscellaneous_ignition"
    t.string   "miscellaneous_ignition_other"
    t.boolean  "call_for_help",                                           default: false
    t.string   "talk_to"
    t.text     "impression_staff"
    t.string   "engine_purge_size"
  end

  create_table "mark_quarterbreeds", force: :cascade do |t|
    t.datetime "created_at",                                                                        null: false
    t.datetime "updated_at",                                                                        null: false
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
    t.string   "comments"
    t.boolean  "same_information",                                                   default: true
    t.string   "mark_quarterbreeds_before_type"
    t.string   "mark_quarterbreeds_before_vin"
    t.string   "mark_quarterbreeds_before_year"
    t.string   "mark_quarterbreeds_before_engine_number"
    t.string   "mark_quarterbreeds_before_trans"
    t.string   "mark_quarterbreeds_before_tire_size"
    t.string   "mark_quarterbreeds_before_rear_axle_ratio"
    t.string   "mark_quarterbreeds_before_speedo"
    t.string   "mark_quarterbreeds_gm_trans_year"
    t.string   "mark_quarterbreeds_kit"
    t.boolean  "mark_quarterbreeds_driveshaft"
    t.boolean  "mark_quarterbreeds_electrolock"
    t.decimal  "mark_quarterbreeds_kit_amt",                precision: 10, scale: 2
    t.decimal  "mark_quarterbreeds_driveshaft_amt",         precision: 10, scale: 2
    t.decimal  "mark_quarterbreeds_electrolock_amt",        precision: 10, scale: 2
    t.string   "mark_quarterbreeds_other"
    t.decimal  "mark_quarterbreeds_other_price",            precision: 10, scale: 2
    t.decimal  "credit_amt",                                                         default: 0.0
    t.string   "credit_description"
    t.decimal  "subtotal",                                  precision: 10, scale: 2
    t.decimal  "freight",                                   precision: 10, scale: 2
    t.decimal  "sales_tax",                                 precision: 10, scale: 2
    t.decimal  "total",                                     precision: 10, scale: 2
    t.boolean  "add_mount_set_already_bought"
    t.boolean  "add_mount_set_not_jci"
    t.string   "auto_shifter"
    t.string   "rear_axle_ratio_other"
    t.string   "speedo_other"
    t.string   "secure_url"
    t.boolean  "angle_drive"
    t.boolean  "motor_fuel_injection"
    t.string   "xj_engine_number"
    t.boolean  "pipe_plugs"
    t.boolean  "new_angle_drive"
    t.decimal  "new_angle_drive_amt",                       precision: 10, scale: 2
    t.boolean  "starter"
    t.decimal  "starter_amt",                               precision: 10, scale: 2
    t.boolean  "trans_oil_cooler"
    t.decimal  "trans_oil_cooler_amt",                      precision: 10, scale: 2
    t.boolean  "oil_filter"
    t.decimal  "oil_filter_amt",                            precision: 10, scale: 2
    t.string   "ship_to_countr"
    t.string   "car_owner_countr"
    t.string   "car_owner_where_find_us"
  end

  create_table "order_sheets", force: :cascade do |t|
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
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
    t.boolean  "same_information",                                   default: true
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
    t.string   "add_mount_set"
    t.string   "transmission_year"
    t.string   "transmission_other"
    t.decimal  "credit_amt",                                         default: 0.0
  end

  create_table "quarterbreeds", force: :cascade do |t|
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
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
    t.decimal  "credit",                                           default: 0.0
    t.decimal  "subtotal",                precision: 10, scale: 2
    t.decimal  "sales_tex",               precision: 10, scale: 2
    t.boolean  "texas_resident"
    t.boolean  "same_information",                                 default: true
    t.integer  "expedite"
    t.decimal  "total",                   precision: 10, scale: 2
    t.text     "comments"
    t.string   "car_owner_countr"
    t.string   "ship_to_countr"
    t.string   "car_owner_where_find_us"
    t.string   "other_speedo"
    t.string   "rear_axle_ratio_other"
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
    t.boolean "ac_hoses"
    t.boolean "jci_headers"
    t.boolean "fuel_injection_vc"
    t.boolean "driveshaft_adaptor"
    t.boolean "electrolock"
    t.string  "other_kit_options"
    t.decimal "credit_amt",                                           default: 0.0
    t.string  "credit_description"
    t.decimal "subtotal",                    precision: 10, scale: 2
    t.decimal "freight",                     precision: 10, scale: 2
    t.decimal "sales_tax",                   precision: 10, scale: 2
    t.decimal "total",                       precision: 10, scale: 2
    t.string  "buick_v6_cid"
    t.string  "comments"
    t.decimal "kit_amt",                     precision: 10, scale: 2
    t.decimal "ac_hoses_amt",                precision: 10, scale: 2
    t.decimal "jci_headers_amt",             precision: 10, scale: 2
    t.decimal "fuel_injection_vc_amt",       precision: 10, scale: 2
    t.decimal "driveshaft_adaptor_amt",      precision: 10, scale: 2
    t.decimal "electrolock_amt",             precision: 10, scale: 2
    t.boolean "same_information",                                     default: true
    t.string  "ship_to_countr"
    t.string  "car_owner_countr"
    t.string  "car_owner_where_find_us"
    t.string  "other_type"
    t.string  "other_rear_axle_ratio"
    t.boolean "headers_3800"
    t.decimal "headers_3800_amt",            precision: 10, scale: 2
  end

  create_table "xj6_quarterbreeds", force: :cascade do |t|
    t.datetime "created_at",                                                         null: false
    t.datetime "updated_at",                                                         null: false
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
    t.string   "comments"
    t.boolean  "same_information",                                    default: true
    t.string   "model"
    t.string   "vin"
    t.string   "year"
    t.string   "month_built"
    t.string   "year_built"
    t.string   "engine_number"
    t.string   "rear_axl_ratio"
    t.string   "rear_axl_ratio_other"
    t.string   "tire_size"
    t.string   "speedo_number"
    t.string   "speedo_number_other"
    t.string   "trans"
    t.string   "trans_year"
    t.string   "trans_length"
    t.string   "trans_length_other"
    t.string   "xj6_quarterbreedss_kit"
    t.boolean  "driveshaft"
    t.boolean  "torque_converter"
    t.decimal  "xj6_quarterbreedss_kit_amt", precision: 10, scale: 2
    t.decimal  "driveshaft_amt",             precision: 10, scale: 2
    t.decimal  "torque_converter_amt",       precision: 10, scale: 2
    t.decimal  "credit_amt",                                          default: 0.0
    t.string   "credit_description"
    t.decimal  "subtotal",                   precision: 10, scale: 2
    t.decimal  "expedite",                   precision: 10, scale: 2
    t.decimal  "sales_tax",                  precision: 10, scale: 2
    t.decimal  "total",                      precision: 10, scale: 2
    t.string   "engine_model"
    t.string   "ship_to_countr"
    t.string   "car_owner_countr"
    t.string   "car_owner_where_find_us"
    t.boolean  "gear_drive_starter"
    t.decimal  "gear_drive_starter_amt",     precision: 10, scale: 2
  end

end
