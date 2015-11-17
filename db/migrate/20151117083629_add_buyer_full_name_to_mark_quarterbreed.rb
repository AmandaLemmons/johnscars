class AddBuyerFullNameToMarkQuarterbreed < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :car_owner_full_name, :string
    add_column :mark_quarterbreeds, :car_owner_address, :string
    add_column :mark_quarterbreeds, :car_owner_city, :string
    add_column :mark_quarterbreeds, :car_owner_state, :string
    add_column :mark_quarterbreeds, :car_owner_email, :string
    add_column :mark_quarterbreeds, :car_owner_zip, :string
    add_column :mark_quarterbreeds, :car_owner_home_phone, :string
    add_column :mark_quarterbreeds, :car_owner_work_phone, :string
    add_column :mark_quarterbreeds, :car_owner_fax, :string
    add_column :mark_quarterbreeds, :car_owner_find_us, :string
    add_column :mark_quarterbreeds, :car_owner_home_hours, :string
    add_column :mark_quarterbreeds, :car_owner_work_hours, :string
    add_column :mark_quarterbreeds, :car_owner_fax_hours, :string


    add_column :mark_quarterbreeds, :ship_to_full_name, :string
    add_column :mark_quarterbreeds, :ship_to_address, :string
    add_column :mark_quarterbreeds, :ship_to_city, :string
    add_column :mark_quarterbreeds, :ship_to_state, :string
    add_column :mark_quarterbreeds, :ship_to_email, :string
    add_column :mark_quarterbreeds, :ship_to_zip, :string
    add_column :mark_quarterbreeds, :ship_to_phone, :string
    add_column :mark_quarterbreeds, :ship_to_fax, :string
    add_column :mark_quarterbreeds, :ship_to_contact_person, :string

    add_column :mark_quarterbreeds, :comments, :string
    add_column :mark_quarterbreeds, :same_information, :boolean


    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_type, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_vin, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_year, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_engine_number, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_trans, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_tire_size, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_rear_axle_ratio, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_before_speedo, :string

    add_column :mark_quarterbreeds, :mark_quarterbreeds_gm_trans_year, :string

    add_column :mark_quarterbreeds, :mark_quarterbreeds_kit, :boolean
    add_column :mark_quarterbreeds, :mark_quarterbreeds_driveshaft, :boolean
    add_column :mark_quarterbreeds, :mark_quarterbreeds_electrolock, :boolean
    add_column :mark_quarterbreeds, :mark_quarterbreeds_kit_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :mark_quarterbreeds_driveshaft_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :mark_quarterbreeds_electrolock_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :mark_quarterbreeds_other, :string
    add_column :mark_quarterbreeds, :mark_quarterbreeds_other_price, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :credit_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :credit_description, :string
    add_column :mark_quarterbreeds, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :freight, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :total, :decimal, :precision => 10, :scale => 2

    add_column :mark_quarterbreeds, :add_mount_set_already_bought, :boolean
    add_column :mark_quarterbreeds, :add_mount_set_not_jci, :boolean








  end
end
