class AddEngineToDatsunZcars < ActiveRecord::Migration
  def change
    add_column :datsun_zcars, :driveline_engine, :string
    add_column :datsun_zcars, :driveline_year, :string
    add_column :datsun_zcars, :driveline_cid, :string
    add_column :datsun_zcars, :donar_car, :string
    add_column :datsun_zcars, :donar_car_other, :string

    add_column :datsun_zcars, :driveline_trans, :string
    add_column :datsun_zcars, :driveline_trans_year, :string
    add_column :datsun_zcars, :tailhousing_length, :string
    add_column :datsun_zcars, :how_get_trans, :string

    add_column :datsun_zcars, :ac_refrigerant, :string
    add_column :datsun_zcars, :ac_refrigerant_other, :string
    add_column :datsun_zcars, :battery_type, :string
    add_column :datsun_zcars, :fan_belts, :string

    add_column :datsun_zcars, :some_carb_v8, :boolean, :default => false
    add_column :datsun_zcars, :most_carb_v8, :boolean, :default => false
    add_column :datsun_zcars, :truck_tbi, :boolean, :default => false
    add_column :datsun_zcars, :camaro_lt1, :boolean, :default => false
    add_column :datsun_zcars, :corvette_lt4, :boolean, :default => false
    add_column :datsun_zcars, :other_front_view, :boolean, :default => false

    add_column :datsun_zcars, :compressor_a6, :boolean, :default => false
    add_column :datsun_zcars, :compressor_r4, :boolean, :default => false
    add_column :datsun_zcars, :compressor_da6, :boolean, :default => false
    add_column :datsun_zcars, :compressor_nd, :boolean, :default => false
    add_column :datsun_zcars, :plug_a6, :boolean, :default => false
    add_column :datsun_zcars, :plug_r4, :boolean, :default => false
    add_column :datsun_zcars, :plug_da6, :boolean, :default => false
    add_column :datsun_zcars, :plug_nd, :boolean, :default => false

    add_column :datsun_zcars, :alternator_plug_type2, :boolean, :default => false
    add_column :datsun_zcars, :alternator_plug_type3, :boolean, :default => false
    add_column :datsun_zcars, :alternator_plug_type1, :boolean, :default => false
    add_column :datsun_zcars, :ignition_plug_type1, :boolean, :default => false
    add_column :datsun_zcars, :ignition_plug_type2, :boolean, :default => false
    add_column :datsun_zcars, :ignition_plug_type3, :boolean, :default => false

  end
end
