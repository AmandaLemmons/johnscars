class AddFullNameToDatsunZcars < ActiveRecord::Migration
  def change
    add_column :datsun_zcars, :car_owner_full_name, :string
    add_column :datsun_zcars, :car_owner_address, :string
    add_column :datsun_zcars, :car_owner_city, :string
    add_column :datsun_zcars, :car_owner_state, :string
    add_column :datsun_zcars, :car_owner_email, :string
    add_column :datsun_zcars, :car_owner_zip, :string
    add_column :datsun_zcars, :car_owner_home_phone, :string
    add_column :datsun_zcars, :car_owner_work_phone, :string
    add_column :datsun_zcars, :car_owner_fax, :string
    add_column :datsun_zcars, :car_owner_find_us, :string
    add_column :datsun_zcars, :car_owner_home_hours, :string
    add_column :datsun_zcars, :car_owner_work_hours, :string
    add_column :datsun_zcars, :car_owner_fax_hours, :string
    add_column :datsun_zcars, :car_owner_country, :string
    add_column :datsun_zcars, :car_owner_where_find_us, :string

    add_column :datsun_zcars, :ship_to_full_name, :string
    add_column :datsun_zcars, :ship_to_address, :string
    add_column :datsun_zcars, :ship_to_city, :string
    add_column :datsun_zcars, :ship_to_state, :string
    add_column :datsun_zcars, :ship_to_email, :string
    add_column :datsun_zcars, :ship_to_zip, :string
    add_column :datsun_zcars, :ship_to_phone, :string
    add_column :datsun_zcars, :ship_to_fax, :string
    add_column :datsun_zcars, :ship_to_contact_person, :string
    add_column :datsun_zcars, :ship_to_country, :string
    add_column :datsun_zcars, :same_information, :boolean, :default => false
    add_column :datsun_zcars, :comments, :string

    add_column :datsun_zcars, :type, :string
    add_column :datsun_zcars, :vin, :string
    add_column :datsun_zcars, :year, :string
    add_column :datsun_zcars, :month_built, :string
    add_column :datsun_zcars, :year_built, :string
    add_column :datsun_zcars, :engine, :string
    add_column :datsun_zcars, :rear_axle, :string
    add_column :datsun_zcars, :tire_size, :string
    add_column :datsun_zcars, :power_steering, :string

    add_column :datsun_zcars, :zcar_kit, :integer
    add_column :datsun_zcars, :tach_calibration, :boolean, :default => false
    add_column :datsun_zcars, :tach_calibration_without_smog, :boolean, :default => false
    add_column :datsun_zcars, :ramshorn_w_smog, :boolean, :default => false
    add_column :datsun_zcars, :ramshorn_w_egr_smog, :boolean, :default => false
    add_column :datsun_zcars, :driveshaft_except_t400, :boolean, :default => false
    add_column :datsun_zcars, :driveshaft_t400, :boolean, :default => false
    add_column :datsun_zcars, :radiator, :boolean, :default => false
    add_column :datsun_zcars, :electric_fan, :boolean, :default => false
    add_column :datsun_zcars, :electrolock_t700, :boolean, :default => false
    add_column :datsun_zcars, :other, :boolean, :default => false
    add_column :datsun_zcars, :credit_amt, :decimal, :default => 0

    add_column :datsun_zcars, :tach_calibration_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :tach_calibration_without_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :ramshorn_w_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :ramshorn_w_egr_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :driveshaft_except_t400_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :driveshaft_t400_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :radiator_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :electric_sfan_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :electrolock_t700_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :other_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :credit_description, :string
    add_column :datsun_zcars, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :expedite, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zcars, :total, :decimal, :precision => 10, :scale => 2
  end
end
