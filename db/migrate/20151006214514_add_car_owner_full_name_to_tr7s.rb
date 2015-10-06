class AddCarOwnerFullNameToTr7s < ActiveRecord::Migration
  def change

    add_column :tr7s, :car_owner_full_name, :string
    add_column :tr7s, :car_owner_address, :string
    add_column :tr7s, :car_owner_city, :string
    add_column :tr7s, :car_owner_state, :string
    add_column :tr7s, :car_owner_email, :string
    add_column :tr7s, :car_owner_zip, :string
    add_column :tr7s, :car_owner_home_phone, :string
    add_column :tr7s, :car_owner_work_phone, :string
    add_column :tr7s, :car_owner_fax, :string
    add_column :tr7s, :car_owner_find_us, :string
    add_column :tr7s, :car_owner_home_hours, :string
    add_column :tr7s, :car_owner_work_hours, :string
    add_column :tr7s, :car_owner_fax_hours, :string


    add_column :tr7s, :ship_to_full_name, :string
    add_column :tr7s, :ship_to_address, :string
    add_column :tr7s, :ship_to_city, :string
    add_column :tr7s, :ship_to_state, :string
    add_column :tr7s, :ship_to_email, :string
    add_column :tr7s, :ship_to_zip, :string
    add_column :tr7s, :ship_to_phone, :string
    add_column :tr7s, :ship_to_fax, :string
    add_column :tr7s, :ship_to_contact_person, :string

    add_column :tr7s, :tr7s_type, :string
    add_column :tr7s, :tr7s_vin, :string
    add_column :tr7s, :tr7s_year, :string
    add_column :tr7s, :tr7s_month_built, :string
    add_column :tr7s, :tr7s_year_built, :string
    add_column :tr7s, :tr7s_engine, :string
    add_column :tr7s, :tr7s_ac, :string
    add_column :tr7s, :tr7s_transmission_type, :string
    add_column :tr7s, :tr7s_rear_axle_ratio, :string
    add_column :tr7s, :tr7s_tire_size, :string
    add_column :tr7s, :tr7s_tire_ratio, :string
    add_column :tr7s, :tr7s_expansion_tank, :boolean
    add_column :tr7s, :buick_v6_engine, :string
    add_column :tr7s, :buick_v6_year, :string
    add_column :tr7s, :buick_v6_freon, :string
    add_column :tr7s, :buick_v6_freon_other, :string
    add_column :tr7s, :buick_v6_trans, :string
    add_column :tr7s, :buick_v6_tailhousing_length, :string
    add_column :tr7s, :buick_v6_manual, :string
    add_column :tr7s, :buick_v6_trans_year, :string
    add_column :tr7s, :tr7s_kit, :boolean
    add_column :tr7s, :ac_hoses, :boolean
    add_column :tr7s, :jci_headers, :boolean
    add_column :tr7s, :fuel_injection_vc, :boolean
    add_column :tr7s, :driveshaft_adaptor, :boolean
    add_column :tr7s, :electrolock, :boolean
    add_column :tr7s, :other_kit_options, :string
    add_column :tr7s, :credit_amt, :integer
    add_column :tr7s, :credit_description, :string
    add_column :tr7s, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :freight, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :total, :decimal, :precision => 10, :scale => 2

















  end
end
