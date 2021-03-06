class Xj6QuarterbreedsController < ApplicationController
  before_action :set_xj6_quarterbreed, only:[:show, :edit, :update, :print_xj6_pdf]

  def new
    @xj6_quarterbreed = Xj6Quarterbreed.new
  end

 def create
   @xj6_quarterbreed = Xj6Quarterbreed.new(xj6_quarterbreed_params)
   if @xj6_quarterbreed.save
     redirect_to xj6_quarterbreed_path(@xj6_quarterbreed.id)
   else
     render :index
   end
 end

 def index
    @xj6_quarterbreed = Xj6Quarterbreed.new
 end

 def show
 end

 def print_xj6_pdf
   respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :encoding => 'utf-8',
        :template => 'xj6_quarterbreeds/print_xj6_pdf.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

 def edit

 end

 def update
   if @xj6_quarterbreed.update(xj6_quarterbreed_params)
     @xj6_quarterbreed.save
     redirect_to xj6_quarterbreed_path(@xj6_quarterbreed.id)
   else
     render :edit
   end
 end

 private

 def xj6_quarterbreed_params
   params.require(:xj6_quarterbreed).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :comments, :same_information, :model, :vin, :year, :month_built, :year_built, :engine_number, :rear_axl_ratio, :rear_axl_ratio_other, :tire_size, :speedo_number, :speedo_number_other, :trans, :trans_year, :trans_length, :trans_length_other, :xj6_quarterbreedss_kit, :driveshaft, :torque_converter, :xj6_quarterbreedss_kit_amt, :driveshaft_amt, :torque_converter_amt, :credit_amt, :credit_description, :subtotal, :expedite, :sales_tax, :total, :engine_model, :ship_to_countr, :car_owner_countr, :car_owner_where_find_us, :gear_drive_starter, :gear_drive_starter_amt)
 end


 def set_xj6_quarterbreed
   @xj6_quarterbreed = Xj6Quarterbreed.find(params[:id])
   @xj6_quarterbreed.set_same_shipping
   @xj6_quarterbreed.set_xj6_quarterbreeds_kit
   @xj6_quarterbreed.set_xj6_quarterbreeds_driveshaft
   @xj6_quarterbreed.set_torque_converter
   @xj6_quarterbreed.set_gear_drive_starter
   @xj6_quarterbreed.set_subtotal
   @xj6_quarterbreed.set_sales_tax
   @xj6_quarterbreed.set_total
   @xj6_quarterbreed.set_home_phone
   @xj6_quarterbreed.set_work_phone
   @xj6_quarterbreed.set_ship_to_phone
   @xj6_quarterbreed.set_car_owner_fax
   @xj6_quarterbreed.set_ship_to_fax
 end

end
