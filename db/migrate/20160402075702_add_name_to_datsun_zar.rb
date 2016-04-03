class AddNameToDatsunZar < ActiveRecord::Migration
  def change
    add_column :datsun_zars, :car_owner_full_name, :string
    add_column :datsun_zars, :car_owner_address, :string
    add_column :datsun_zars, :car_owner_city, :string
    add_column :datsun_zars, :car_owner_state, :string
    add_column :datsun_zars, :car_owner_email, :string
    add_column :datsun_zars, :car_owner_zip, :string
    add_column :datsun_zars, :car_owner_home_phone, :string
    add_column :datsun_zars, :car_owner_work_phone, :string
    add_column :datsun_zars, :car_owner_fax, :string
    add_column :datsun_zars, :car_owner_find_us, :string
    add_column :datsun_zars, :car_owner_home_hours, :string
    add_column :datsun_zars, :car_owner_work_hours, :string
    add_column :datsun_zars, :car_owner_fax_hours, :string
    add_column :datsun_zars, :car_owner_country, :string
    add_column :datsun_zars, :car_owner_where_find_us, :string

    add_column :datsun_zars, :ship_to_full_name, :string
    add_column :datsun_zars, :ship_to_address, :string
    add_column :datsun_zars, :ship_to_city, :string
    add_column :datsun_zars, :ship_to_state, :string
    add_column :datsun_zars, :ship_to_email, :string
    add_column :datsun_zars, :ship_to_zip, :string
    add_column :datsun_zars, :ship_to_phone, :string
    add_column :datsun_zars, :ship_to_fax, :string
    add_column :datsun_zars, :ship_to_contact_person, :string
    add_column :datsun_zars, :ship_to_country, :string
    add_column :datsun_zars, :same_information, :boolean, :default => false
    add_column :datsun_zars, :comments, :string

    add_column :datsun_zars, :type, :string
    add_column :datsun_zars, :vin, :string
    add_column :datsun_zars, :year, :string
    add_column :datsun_zars, :month_built, :string
    add_column :datsun_zars, :year_built, :string
    add_column :datsun_zars, :engine, :string
    add_column :datsun_zars, :rear_axle, :string
    add_column :datsun_zars, :tire_size, :string
    add_column :datsun_zars, :power_steering, :string

    add_column :datsun_zars, :zcar_kit, :integer
    add_column :datsun_zars, :tach_calibration, :boolean, :default => false
    add_column :datsun_zars, :tach_calibration_without_smog, :boolean, :default => false
    add_column :datsun_zars, :ramshorn_w_smog, :boolean, :default => false
    add_column :datsun_zars, :ramshorn_w_egr_smog, :boolean, :default => false
    add_column :datsun_zars, :driveshaft_except_t400, :boolean, :default => false
    add_column :datsun_zars, :driveshaft_t400, :boolean, :default => false
    add_column :datsun_zars, :radiator, :boolean, :default => false
    add_column :datsun_zars, :electric_fan, :boolean, :default => false
    add_column :datsun_zars, :electrolock_t700, :boolean, :default => false
    add_column :datsun_zars, :other, :boolean, :default => false
    add_column :datsun_zars, :credit_amt, :decimal, :default => 0

    add_column :datsun_zars, :tach_calibration_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :tach_calibration_without_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :ramshorn_w_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :ramshorn_w_egr_smog_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :driveshaft_except_t400_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :driveshaft_t400_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :radiator_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :electric_sfan_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :electrolock_t700_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :other_amt, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :credit_description, :string
    add_column :datsun_zars, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :expedite, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :datsun_zars, :total, :decimal, :precision => 10, :scale => 2


  end
end
