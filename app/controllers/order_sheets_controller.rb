class OrderSheetsController < ApplicationController
   before_action :set_order_sheet, only:[:show, :edit, :update, :print_order_sheet_pdf]

   def new
     @order_sheet = OrderSheet.new
   end

  def create
    @order_sheet = OrderSheet.new(order_sheet_params)
    if @order_sheet.save
      redirect_to order_sheet_path(@order_sheet.id)
    else
      render :index
    end
  end

  def index
     @order_sheet = OrderSheet.new
  end

  def show
  end

  def print_order_sheet_pdf
    respond_to do |format|
       format.html
       format.pdf do
         render :pdf => 'file_name',
         :encoding => 'utf-8',
         :template => 'order_sheets/print_order_sheet_pdf.pdf.erb',
         :layout => 'pdf.html.erb',
         :show_as_html => params[:debug].present?
       end
     end
   end

  def edit
  end

  def update
    if @order_sheet.update(order_sheet_params)
      @order_sheet.save
      redirect_to order_sheet_path(@order_sheet.id)
    else
      render :edit
    end
  end


  private

  def order_sheet_params
    params.require(:order_sheet).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :zcar_type, :zcar_vin, :zcar_year, :zcar_month_built, :zcar_year_built, :trans_crossmember, :driveshaft, :speedometer, :vital_liquids, :header_set, :ac_compressor_mount_kit, :ac_hose_kit, :high_volume, :subtotal, :sales_tax, :total, :sign_date, :same_information, :ship_to_countr, :comments, :hole_size, :pilot_diameter, :pattern_type, :transmission_type, :transmission_detail, :amt2, :amt1, :amt3, :amt4, :amt5, :amt6, :amt7, :amt8, :amt9, :ls_type, :ls_year, :rh_monies, :car_owner_countr, :mount_set, :zcar_type2, :ls_type2, :car_owner_where_find_us, :other_differential_flange, :q45, :output_shaft, :add_mount_set, :transmission_year, :transmission_other, :credit_amt)
  end

  def set_order_sheet
    @order_sheet = OrderSheet.find(params[:id])
    @order_sheet.set_add_mount_set
    @order_sheet.set_trans_crossmember
    @order_sheet.set_driveshaft
    @order_sheet.set_speedometer
    @order_sheet.set_vital_liquids
    @order_sheet.set_header_set
    @order_sheet.set_ac_compressor_mount_kit
    @order_sheet.set_ac_hose_kit
    @order_sheet.set_high_volume
    @order_sheet.set_same_shipping
    @order_sheet.set_subtotal
    @order_sheet.set_sales_tax
    @order_sheet.set_total
    @order_sheet.set_home_phone
    @order_sheet.set_work_phone
    @order_sheet.set_ship_to_phone
    @order_sheet.set_car_owner_fax
    @order_sheet.set_ship_to_fax
  end

end
