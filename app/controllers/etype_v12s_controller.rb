class EtypeV12sController < ApplicationController

  before_action :set_etype_v12, only:[:show, :edit, :update]

  def new
    @etype_v12 = EtypeV12.new
  end

 def create
   @etype_v12 = EtypeV12.new(etype_v12_params)
   if @etype_v12.save
     redirect_to etype_v12_path(@etype_v12.id)
   else
     render :index
   end
 end

 def index
    @etype_v12 = EtypeV12.new
 end

 def show
  #  @etype_v12.set_same_shipping
  #  @etype_v12.set_etype_v12_kit
  #  @etype_v12.set_ac_hoses
  #  @etype_v12.set_jci_headers
  #  @etype_v12.set_fuel_injection_vc
  #  @etype_v12.set_driveshaft_adaptor
  #  @etype_v12.set_electrolock
  #  @etype_v12.set_subtotal
  #  @etype_v12.set_sales_tax
  #  @etype_v12.set_total
 end

 def edit
  #  @etype_v12.set_same_shipping
  #  @etype_v12.set_etype_v12_kit
  #  @etype_v12.set_ac_hoses
  #  @etype_v12.set_jci_headers
  #  @etype_v12.set_fuel_injection_vc
  #  @etype_v12.set_driveshaft_adaptor
  #  @etype_v12.set_electrolock
  #  @etype_v12.set_subtotal
  #  @etype_v12.set_sales_tax
  #  @etype_v12.set_total
 end

 def update
   if @etype_v12.update(etype_v12_params)
     @etype_v12.save
     redirect_to etype_v12_path(@etype_v12.id)
   else
     render :edit
   end
 end

 private

 def etype_v12_params
   params.require(:etype_v12).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :car_owner_country, :car_owner_where_find_us, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :ship_to_country, :etype_cyl, :etype_car_type, :vin, :year, :engine_number, :carburetors, :trans, :tire_size, :tire_radius, :rear_axl_ratio, :rear_axl_ratio_other, :speedo_number, :speedo_number_other, :motor_missing, :motor_burned, :right_hand_drive, :auto_trans_kit, :auto_trans_kit_amt, :manual_tras_kit, :manual_tras_kit_amt, :tach_calibration, :tach_calibration_amt, :fuel_injection_v8, :fuel_injection_v8_amt, :overdrive, :overdrive_amt, :credit_amt, :credit_description, :subtotal, :freight, :sales_tax, :total, :same_information)
 end

 def set_etype_v12
   @etype_v12 = EtypeV12find(params[:id])
 end
end
