class AddFuelInjectionToDatsunZcars < ActiveRecord::Migration
  def change
    add_column :datsun_zcars, :engine_fuel_injection, :string
    add_column :datsun_zcars, :engine_fuel_injection_other, :string
    add_column :datsun_zcars, :engine_donor_car, :string
    add_column :datsun_zcars, :engine_donor_car_other, :string
    add_column :datsun_zcars, :engine_tpi_lt1, :string
    add_column :datsun_zcars, :engine_ps_pump_location, :string
    add_column :datsun_zcars, :engine_ps_pump_outlet, :string
    add_column :datsun_zcars, :engine_corvette_nut_size, :string
    add_column :datsun_zcars, :engine_corvette_diameter, :string
    add_column :datsun_zcars, :engine_tbi_thermostat, :string

    add_column :datsun_zcars, :accessories_fan, :string
    add_column :datsun_zcars, :accessories_water_pump, :string
    add_column :datsun_zcars, :accessories_fan_belts, :string
    add_column :datsun_zcars, :accessories_air_pump, :string
    add_column :datsun_zcars, :accessories_valve_covers, :string
    add_column :datsun_zcars, :accessories_ac_refrigerant, :string

    add_column :datsun_zcars, :miscellaneous_fi_harness, :string
    add_column :datsun_zcars, :miscellaneous_fi_harness_other, :string
    add_column :datsun_zcars, :miscellaneous_oil_switch, :boolean, :default => false
    add_column :datsun_zcars, :miscellaneous_speedo_type, :string
    add_column :datsun_zcars, :miscellaneous_t700_lockup, :string
    add_column :datsun_zcars, :miscellaneous_ignition, :string
    add_column :datsun_zcars, :miscellaneous_ignition_other, :string

    add_column :datsun_zcars, :call_for_help, :boolean, :default => false
    add_column :datsun_zcars, :talk_to, :string
    add_column :datsun_zcars, :impression_staff, :text
    add_column :datsun_zcars, :engine_purge_size, :string

    change_column :datsun_zcars, :comments, :text


  end
end
