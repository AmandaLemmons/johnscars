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
  @etype_v12.set_same_shipping
  # @etype_v12.set_phone_dahses
   @etype_v12.set_auto_trans_kit
   @etype_v12. set_manual_tras_kit
   @etype_v12.set_tach_calibration
   @etype_v12.set_fuel_injection_v8
   @etype_v12.set_overdrive
   @etype_v12.set_subtotal
   @etype_v12.set_sales_tax
   @etype_v12.set_total
 end

 def edit
   @etype_v12.set_same_shipping
  @etype_v12.set_auto_trans_kit
  @etype_v12. set_manual_tras_kit
  @etype_v12.set_tach_calibration
  @etype_v12.set_fuel_injection_v8
  @etype_v12.set_overdrive
  @etype_v12.set_subtotal
  @etype_v12.set_sales_tax
  @etype_v12.set_total
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
   params.require(:etype_v12).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :car_owner_country, :car_owner_where_find_us, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :ship_to_country, :etype_cyl, :etype_car_type, :vin, :year, :engine_number, :carburetors, :trans, :tire_size, :tire_radius, :rear_axl_ratio, :rear_axl_ratio_other, :speedo_number, :speedo_number_other, :motor_missing, :motor_burned, :right_hand_drive, :auto_trans_kit, :auto_trans_kit_amt, :manual_tras_kit, :manual_tras_kit_amt, :tach_calibration, :tach_calibration_amt, :fuel_injection_v8, :fuel_injection_v8_amt, :overdrive, :overdrive_amt, :credit_amt, :credit_description, :subtotal, :freight, :sales_tax, :total, :same_information, :comments, :driveline_engine, :driveline_year, :driveline_cid, :donar_car, :donar_car_other, :driveline_trans, :driveline_trans_year, :tailhousing_length, :how_get_trans, :ac_refrigerant, :ac_refrigerant_other, :battery_type, :fan_belts, :some_carb_v8, :most_carb_v8, :truck_tbi, :camaro_lt1, :corvette_lt4, :other_front_view, :compressor_a6, :compressor_r4, :compressor_da6, :compressor_nd, :plug_a6, :plug_r4, :plug_da6, :plug_nd, :alternator_plug_type2, :alternator_plug_type3, :alternator_plug_type1, :ignition_plug_type1, :ignition_plug_type2, :ignition_plug_type3)
 end

 def set_etype_v12
   @etype_v12 = EtypeV12.find(params[:id])
 end
end
