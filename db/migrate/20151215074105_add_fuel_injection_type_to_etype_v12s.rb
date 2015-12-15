class AddFuelInjectionTypeToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :engine_fuel_injection, :string
    add_column :etype_v12s, :engine_fuel_injection_other, :string
    add_column :etype_v12s, :engine_donor_car, :string
    add_column :etype_v12s, :engine_donor_car_other, :string
    add_column :etype_v12s, :engine_tpi_lt1, :string
    add_column :etype_v12s, :engine_ps_pump_location, :string
    add_column :etype_v12s, :engine_ps_pump_outlet, :string
    add_column :etype_v12s, :engine_corvette_nut_size, :string
    add_column :etype_v12s, :engine_corvette_diameter, :string
    add_column :etype_v12s, :engine_tbi_thermostat, :string

    add_column :etype_v12s, :accessories_fan, :string
    add_column :etype_v12s, :accessories_water_pump, :string
    add_column :etype_v12s, :accessories_fan_belts, :string
    add_column :etype_v12s, :accessories_air_pump, :string
    add_column :etype_v12s, :accessories_valve_covers, :string
    add_column :etype_v12s, :accessories_ac_refrigerant, :string

    add_column :etype_v12s, :miscellaneous_fi_harness, :string
    add_column :etype_v12s, :miscellaneous_fi_harness_other, :string
    add_column :etype_v12s, :miscellaneous_oil_switch, :boolean, :default => false
    add_column :etype_v12s, :miscellaneous_speedo_type, :string
    add_column :etype_v12s, :miscellaneous_t700_lockup, :string
    add_column :etype_v12s, :miscellaneous_ignition, :string
    add_column :etype_v12s, :miscellaneous_ignition_other, :string

    add_column :etype_v12s, :call_for_help, :boolean, :default => false
    add_column :etype_v12s, :talk_to, :string
    add_column :etype_v12s, :impression_staff, :string


  end
end
