class AddCarOwnerInfoToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :car_owner_full_name, :string
    add_column :order_sheets, :car_owner_address, :string
    add_column :order_sheets, :car_owner_city, :string
    add_column :order_sheets, :car_owner_state, :string
    add_column :order_sheets, :car_owner_email, :string
    add_column :order_sheets, :car_owner_zip, :string
    add_column :order_sheets, :car_owner_home_phone, :string
    add_column :order_sheets, :car_owner_work_phone, :string
    add_column :order_sheets, :car_owner_fax, :string
    add_column :order_sheets, :car_owner_find_us, :string
    add_column :order_sheets, :car_owner_home_hours, :string
    add_column :order_sheets, :car_owner_work_hours, :string
    add_column :order_sheets, :car_owner_fax_hours, :string

    add_column :order_sheets, :ship_to_full_name, :string
    add_column :order_sheets, :ship_to_address, :string
    add_column :order_sheets, :ship_to_city, :string
    add_column :order_sheets, :ship_to_state, :string
    add_column :order_sheets, :ship_to_email, :string
    add_column :order_sheets, :ship_to_zip, :string
    add_column :order_sheets, :ship_to_phone, :string
    add_column :order_sheets, :ship_to_fax, :string
    add_column :order_sheets, :ship_to_contact_person, :string
    add_column :order_sheets, :zcar_type, :string
    add_column :order_sheets, :zcar_vin, :string
    add_column :order_sheets, :zcar_year, :string
    add_column :order_sheets, :zcar_month_built, :string
    add_column :order_sheets, :zcar_year_built, :string
    add_column :order_sheets, :trans_crossmember, :boolean
    add_column :order_sheets, :driveshaft, :boolean
    add_column :order_sheets, :speedometer, :boolean
    add_column :order_sheets, :vital_liquids, :boolean
    add_column :order_sheets, :header_set, :boolean
    add_column :order_sheets, :ac_compressor_mount_kit, :boolean
    add_column :order_sheets, :ac_hose_kit, :boolean
    add_column :order_sheets, :high_volume, :boolean
    add_column :order_sheets, :subtotal, :integer
    add_column :order_sheets, :sales_tax, :decimal, :precision => 5, :scale => 2
    add_column :order_sheets, :total, :decimal, :precision => 7, :scale => 2

    add_column :order_sheets, :sign_date, :date
  end
end
