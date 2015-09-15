class AddInfoToQuarterbreed < ActiveRecord::Migration
  def change
    add_column :quarterbreeds, :car_owner_full_name, :string
    add_column :quarterbreeds, :car_owner_address, :string
    add_column :quarterbreeds, :car_owner_city, :string
    add_column :quarterbreeds, :car_owner_state, :string
    add_column :quarterbreeds, :car_owner_email, :string
    add_column :quarterbreeds, :car_owner_zip, :string
    add_column :quarterbreeds, :car_owner_home_phone, :string
    add_column :quarterbreeds, :car_owner_work_phone, :string
    add_column :quarterbreeds, :car_owner_fax, :string
    add_column :quarterbreeds, :car_owner_find_us, :string
    add_column :quarterbreeds, :car_owner_home_hours, :string
    add_column :quarterbreeds, :car_owner_work_hours, :string
    add_column :quarterbreeds, :car_owner_fax_hours, :string

    add_column :quarterbreeds, :ship_to_full_name, :string
    add_column :quarterbreeds, :ship_to_address, :string
    add_column :quarterbreeds, :ship_to_city, :string
    add_column :quarterbreeds, :ship_to_state, :string
    add_column :quarterbreeds, :ship_to_email, :string
    add_column :quarterbreeds, :ship_to_zip, :string
    add_column :quarterbreeds, :ship_to_phone, :string
    add_column :quarterbreeds, :ship_to_fax, :string
    add_column :quarterbreeds, :ship_to_contact_person, :string

    add_column :quarterbreeds, :jaguar_type, :string
    add_column :quarterbreeds, :jaguar_vin, :string
    add_column :quarterbreeds, :jaguar_year, :string
    add_column :quarterbreeds, :jaguar_month_built, :string
    add_column :quarterbreeds, :jugaur_year_built, :string
    add_column :quarterbreeds, :engine_number, :string
    add_column :quarterbreeds, :engine_type, :string
    add_column :quarterbreeds, :tire_size, :string
    add_column :quarterbreeds, :tire_radius, :string
    add_column :quarterbreeds, :rear_axie_ratio, :string
    add_column :quarterbreeds, :speedo_number, :string
    add_column :quarterbreeds, :jaguar_trans, :string
    add_column :quarterbreeds, :flywheel_core, :boolean
    add_column :quarterbreeds, :draveshaft, :boolean
    add_column :quarterbreeds, :flywheel_core_amt, :integer
    add_column :quarterbreeds, :driveshaft_amt, :integer
    add_column :quarterbreeds, :quarterbreed_kit, :integer
    add_column :quarterbreeds, :credit, :integer
    add_column :quarterbreeds, :subtotal, :integer
    add_column :quarterbreeds, :sales_tex, :decimal, :precision => 10, :scale => 2
    add_column :quarterbreeds, :texas_resident, :boolean
    add_column :quarterbreeds, :same_information, :boolean
    add_column :quarterbreeds, :expedite, :integer
    add_column :quarterbreeds, :total, :integer
    add_column :quarterbreeds, :comments, :text




  end
end
