class OrderSheetsController < ApplicationController
   before_action :set_order_sheet, only:[:show, :edit, :update, :create]
   before_action :set_trans_crossmember, only: [:edit, :update, :create]
   before_action :set_driveshaft, only:[:edit, :update, :create]


  def create
    @order_sheet = OrderSheet.new(order_sheet_params)
    @order_sheet.save
    redirect_to order_sheet_path(@order_sheet.id)
  end

  def index
    @order_sheet = OrderSheet.new
  end

  def show
  end

  def edit
  end

  def update
    if @order_sheet.update(order_sheet_params)
      @order_sheet.save
    end
    redirect_to order_sheet_path(@order_sheet.id)
  end




  private

  def order_sheet_params
    params.require(:order_sheet).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :zcar_type, :zcar_vin, :zcar_year, :zcar_month_built, :zcar_year_built, :trans_crossmember, :driveshaft, :speedometer, :vital_liquids, :header_set, :ac_compressor_mount_kit, :ac_hose_kit, :high_volume, :subtotal, :sales_tax, :total, :sign_date, :same_information, :ship_to_countr, :comments, :hole_size, :pilot_diameter, :pattern_type, :transmission_type, :transmission_detail, :amt2, :amt3, :amt4, :amt5, :amt6, :amt7, :amt8, :amt9)
  end

  def set_order_sheet
    @order_sheet = OrderSheet.find(params[:id])
  end

  def set_trans_crossmember
    if @order_sheet.trans_crossmember == 'true'
      @order_sheet.amt1 = 135
      @order_sheet.save!
    end
  end

  def set_driveshaft
    if @order_sheet.driveshaft == 'true'
       @order_sheet.amt2 = 135
       @order_sheet.save!
    end
  end

end
