class AddBuyerNameToXj6Quarterbreed < ActiveRecord::Migration
  def change
    add_column :xj6_quarterbreeds, :car_owner_full_name, :string
    add_column :xj6_quarterbreeds, :car_owner_address, :string
    add_column :xj6_quarterbreeds, :car_owner_city, :string
    add_column :xj6_quarterbreeds, :car_owner_state, :string
    add_column :xj6_quarterbreeds, :car_owner_email, :string
    add_column :xj6_quarterbreeds, :car_owner_zip, :string
    add_column :xj6_quarterbreeds, :car_owner_home_phone, :string
    add_column :xj6_quarterbreeds, :car_owner_work_phone, :string
    add_column :xj6_quarterbreeds, :car_owner_fax, :string
    add_column :xj6_quarterbreeds, :car_owner_find_us, :string
    add_column :xj6_quarterbreeds, :car_owner_home_hours, :string
    add_column :xj6_quarterbreeds, :car_owner_work_hours, :string
    add_column :xj6_quarterbreeds, :car_owner_fax_hours, :string


    add_column :xj6_quarterbreeds, :ship_to_full_name, :string
    add_column :xj6_quarterbreeds, :ship_to_address, :string
    add_column :xj6_quarterbreeds, :ship_to_city, :string
    add_column :xj6_quarterbreeds, :ship_to_state, :string
    add_column :xj6_quarterbreeds, :ship_to_email, :string
    add_column :xj6_quarterbreeds, :ship_to_zip, :string
    add_column :xj6_quarterbreeds, :ship_to_phone, :string
    add_column :xj6_quarterbreeds, :ship_to_fax, :string
    add_column :xj6_quarterbreeds, :ship_to_contact_person, :string

    add_column :xj6_quarterbreeds, :comments, :string
    add_column :xj6_quarterbreeds, :same_information, :boolean

    add_column :xj6_quarterbreeds, :model, :string
    add_column :xj6_quarterbreeds, :vin, :string
    add_column :xj6_quarterbreeds, :year, :string
    add_column :xj6_quarterbreeds, :month_built, :string
    add_column :xj6_quarterbreeds, :year_built, :string
    add_column :xj6_quarterbreeds, :engine_number, :string
    add_column :xj6_quarterbreeds, :rear_axl_ratio, :string
    add_column :xj6_quarterbreeds, :rear_axl_ratio_other, :string
    add_column :xj6_quarterbreeds, :tire_size, :string
    add_column :xj6_quarterbreeds, :speedo_number, :string
    add_column :xj6_quarterbreeds, :speedo_number_other, :string
    add_column :xj6_quarterbreeds, :trans, :string
    add_column :xj6_quarterbreeds, :trans_year, :string
    add_column :xj6_quarterbreeds, :trans_length, :string
    add_column :xj6_quarterbreeds, :trans_length_other, :string

    add_column :xj6_quarterbreeds, :xj6_quarterbreedss_kit, :string
    add_column :xj6_quarterbreeds, :driveshaft, :boolean
    add_column :xj6_quarterbreeds, :torque_converter, :boolean
    add_column :xj6_quarterbreeds, :xj6_quarterbreedss_kit_amt, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :driveshaft_amt, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :torque_converter_amt, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :credit_amt, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :credit_description, :string
    add_column :xj6_quarterbreeds, :subtotal, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :expedite, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :sales_tax, :decimal, :precision => 10, :scale => 2
    add_column :xj6_quarterbreeds, :total, :decimal, :precision => 10, :scale => 2


  end
end
