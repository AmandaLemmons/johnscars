class OrderSheetsController < ApplicationController
  before_action :set_order_sheet, only:[:create]


  def create
    @order_sheet = OrderSheet.new(order_sheet_params)
    @order_sheet.save
  end

  def index
    @order_sheet = OrderSheet.new
  end


  private

  def set_order_sheet
    params.require(:order_sheet).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :zcar_type, :zcar_vin, :zcar_year, :zcar_month_built, :zcar_year_built, :trans_crossmember, :driveshaft, :speedometer, :vital_liquids, :header_set, :ac_compressor_mount_kit, :ac_hose_kit, :high_volume, :subtotal, :sales_tax, :total, :sign_date, :same_information, :ship_to_countr)
  end

end
