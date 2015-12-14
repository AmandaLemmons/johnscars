class AddDrvielineInfoToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :driveline_engine, :string
    add_column :etype_v12s, :driveline_year, :string
    add_column :etype_v12s, :driveline_cid, :string
    add_column :etype_v12s, :donar_car, :string
    add_column :etype_v12s, :donar_car_other, :string

    add_column :etype_v12s, :driveline_trans, :string
    add_column :etype_v12s, :driveline_trans_year, :string
    add_column :etype_v12s, :tailhousing_length, :string
    add_column :etype_v12s, :how_get_trans, :string

    add_column :etype_v12s, :ac_refrigerant, :string
    add_column :etype_v12s, :ac_refrigerant_other, :string
    add_column :etype_v12s, :battery_type, :string
    add_column :etype_v12s, :fan_belts, :string

    add_column :etype_v12s, :some_carb_v8, :boolean, :default => false
    add_column :etype_v12s, :most_carb_v8, :boolean, :default => false
    add_column :etype_v12s, :truck_tbi, :boolean, :default => false
    add_column :etype_v12s, :camaro_lt1, :boolean, :default => false
    add_column :etype_v12s, :corvette_lt4, :boolean, :default => false
    add_column :etype_v12s, :other_front_view, :boolean, :default => false

    add_column :etype_v12s, :compressor_a6, :boolean, :default => false
    add_column :etype_v12s, :compressor_r4, :boolean, :default => false
    add_column :etype_v12s, :compressor_da6, :boolean, :default => false
    add_column :etype_v12s, :compressor_nd, :boolean, :default => false
    add_column :etype_v12s, :plug_a6, :boolean, :default => false
    add_column :etype_v12s, :plug_r4, :boolean, :default => false
    add_column :etype_v12s, :plug_da6, :boolean, :default => false
    add_column :etype_v12s, :plug_nd, :boolean, :default => false

    add_column :etype_v12s, :alternator_plug_type2, :boolean, :default => false
    add_column :etype_v12s, :alternator_plug_type3, :boolean, :default => false
    add_column :etype_v12s, :alternator_plug_type1, :boolean, :default => false
    add_column :etype_v12s, :ignition_plug_type1, :boolean, :default => false
    add_column :etype_v12s, :ignition_plug_type2, :boolean, :default => false
    add_column :etype_v12s, :ignition_plug_type3, :boolean, :default => false


  end
end
