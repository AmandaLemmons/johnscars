class MarkQuarterbreedsController < ApplicationController
  require 'securerandom'

  before_action :set_mark_quarterbreed, only:[:show, :edit, :update]

  def new
    @mark_quarterbreed = MarkQuarterbreed.new
  end

  def create
   @mark_quarterbreed = MarkQuarterbreed.new(mark_quarterbreed_params)
   if @mark_quarterbreed.save
     redirect_to mark_quarterbreed_path(@mark_quarterbreed.id)
   else
     render :index
   end
  end

  def index
    @mark_quarterbreed = MarkQuarterbreed.new
  end

  def show
    @mark_quarterbreed.set_same_shipping
    @mark_quarterbreed.set_mark_quarterbreeds_kit
    @mark_quarterbreed.set_mark_quarterbreeds_driveshaft
    @mark_quarterbreed.set_mark_quarterbreeds_electrolock
    @mark_quarterbreed.set_starter
    @mark_quarterbreed.set_new_angle_drive
    @mark_quarterbreed.set_oil_filter
    @mark_quarterbreed.set_trans_oil_cooler
    @mark_quarterbreed.set_subtotal
    @mark_quarterbreed.set_sales_tax
    @mark_quarterbreed.set_total
  end

  def edit
    @mark_quarterbreed.set_same_shipping
    @mark_quarterbreed.set_mark_quarterbreeds_kit
    @mark_quarterbreed.set_mark_quarterbreeds_driveshaft
    @mark_quarterbreed.set_mark_quarterbreeds_electrolock
    @mark_quarterbreed.set_starter
    @mark_quarterbreed.set_new_angle_drive
    @mark_quarterbreed.set_oil_filter
    @mark_quarterbreed.set_trans_oil_cooler
    @mark_quarterbreed.set_subtotal
    @mark_quarterbreed.set_sales_tax
    @mark_quarterbreed.set_total
  end

  def update
   if @mark_quarterbreed.update(mark_quarterbreed_params)
     @mark_quarterbreed.save
     redirect_to mark_quarterbreed_path(@mark_quarterbreed.id)
   else
     render :edit
   end
  end


  private

  def mark_quarterbreed_params
    params.require(:mark_quarterbreed).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :comments, :same_information, :mark_quarterbreeds_before_type, :mark_quarterbreeds_before_vin, :mark_quarterbreeds_before_year, :mark_quarterbreeds_before_engine_number, :mark_quarterbreeds_before_trans, :mark_quarterbreeds_before_tire_size, :mark_quarterbreeds_before_rear_axle_ratio, :mark_quarterbreeds_before_speedo, :mark_quarterbreeds_gm_trans_year, :mark_quarterbreeds_kit, :mark_quarterbreeds_driveshaft, :mark_quarterbreeds_electrolock, :mark_quarterbreeds_kit_amt, :mark_quarterbreeds_driveshaft_amt, :mark_quarterbreeds_electrolock_amt, :mark_quarterbreeds_other, :mark_quarterbreeds_other_price, :credit_amt, :credit_description, :subtotal, :freight, :sales_tax, :total, :add_mount_set_already_bought, :add_mount_set_not_jci, :auto_shifter, :rear_axle_ratio_other, :speedo_other, :secure_url, :angle_drive, :motor_fuel_injection, :xj_engine_number, :pipe_plugs, :new_angle_drive, :new_angle_drive_amt, :starter, :starter_amt, :trans_oil_cooler, :trans_oil_cooler_amt, :oil_filter, :oil_filter_amt, :ship_to_countr, :car_owner_countr)
end

def set_mark_quarterbreed
  @mark_quarterbreed = MarkQuarterbreed.find(params[:id])
end

end
