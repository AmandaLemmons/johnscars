class AddBuyerNameToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :car_owner_full_name, :string
    add_column :etype_v12s, :car_owner_address, :string
    add_column :etype_v12s, :car_owner_city, :string
    add_column :etype_v12s, :car_owner_state, :string
    add_column :etype_v12s, :car_owner_email, :string
    add_column :etype_v12s, :car_owner_zip, :string
    add_column :etype_v12s, :car_owner_home_phone, :string
    add_column :etype_v12s, :car_owner_work_phone, :string
    add_column :etype_v12s, :car_owner_fax, :string
    add_column :etype_v12s, :car_owner_find_us, :string
    add_column :etype_v12s, :car_owner_home_hours, :string
    add_column :etype_v12s, :car_owner_work_hours, :string
    add_column :etype_v12s, :car_owner_fax_hours, :string
    add_column :etype_v12s, :car_owner_country, :string
    add_column :etype_v12s, :car_owner_where_find_us, :string

    add_column :etype_v12s, :ship_to_full_name, :string
    add_column :etype_v12s, :ship_to_address, :string
    add_column :etype_v12s, :ship_to_city, :string
    add_column :etype_v12s, :ship_to_state, :string
    add_column :etype_v12s, :ship_to_email, :string
    add_column :etype_v12s, :ship_to_zip, :string
    add_column :etype_v12s, :ship_to_phone, :string
    add_column :etype_v12s, :ship_to_fax, :string
    add_column :etype_v12s, :ship_to_contact_person, :string
    add_column :etype_v12s, :ship_to_country, :string

    add_column :etype_v12s, :etype_cyl, :string
    add_column :etype_v12s, :etype_car_type, :string
    add_column :etype_v12s, :vin, :string
    add_column :etype_v12s, :year, :string
    add_column :etype_v12s, :engine_number, :string
    add_column :etype_v12s, :carburetors, :string
    add_column :etype_v12s, :trans, :string
    add_column :etype_v12s, :tire_size, :string
    add_column :etype_v12s, :tire_radius, :string
    add_column :etype_v12s, :rear_axl_ratio, :string
    add_column :etype_v12s, :rear_axl_ratio_other, :string
    add_column :etype_v12s, :speedo_number, :string
    add_column :etype_v12s, :speedo_number_other, :string
    add_column :etype_v12s, :motor_missing, :boolean
    add_column :etype_v12s, :motor_burned, :boolean
    add_column :etype_v12s, :right_hand_drive, :boolean
    add_column :etype_v12s, :auto_trans_kit, :boolean, :default => false
    add_column :etype_v12s, :auto_trans_kit_amt, :integer
    add_column :etype_v12s, :manual_tras_kit, :boolean, :default => false
    add_column :etype_v12s, :manual_tras_kit_amt, :integer
    add_column :etype_v12s, :tach_calibration, :boolean, :default => false
    add_column :etype_v12s, :tach_calibration_amt, :integer
    add_column :etype_v12s, :fuel_injection_v8, :boolean, :default => false
    add_column :etype_v12s, :fuel_injection_v8_amt, :integer
    add_column :etype_v12s, :overdrive, :boolean, :default => false
    add_column :etype_v12s, :overdrive_amt, :integer

    add_column :etype_v12s, :credit_amt, :decimal, :precision => 10, :scale => 2
    add_column :etype_v12s, :credit_description, :string
    add_column :etype_v12s, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :etype_v12s, :freight, :decimal, :precision => 10, :scale => 2
    add_column :etype_v12s, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :etype_v12s, :total, :decimal, :precision => 10, :scale => 2

  end
end
