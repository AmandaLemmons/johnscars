class QuarterbreedsController < ApplicationController

  def new
    @quarterbreed = Quarterbreed.new
  end

 def create
   @quarterbreed = Quarterbreed.new(quarterbreed_params)
   @quarterbreed.save
   redirect_to quarterbreed_path(@quarterbreed.id)
 end

 def index
    @quarterbreed = Quarterbreed.new
 end

 def show
 end

 def edit
 end

 def update
   if @quarterbreed.update(quarterbreed_params)
     @quarterbreed.save
     redirect_to quarterbreed_path(@quarterbreed.id)
   else
     render :edit
   end
 end




 private

 def quarterbreed_params
   params.require(:quarterbreed).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :jaguar_type, :jaguar_vin, :jaguar_year, :jaguar_month_built, :jugaur_year_built, :engine_number, :engine_type, :tire_size, :tire_radius, :rear_axie_ratio, :speedo_number, :jaguar_trans, :flywheel_core, :draveshaft, :credit, :subtotal, :sales_tex, :texas_resident, :expedite, :total, :comments, :flywheel_core_amt, :driveshaft_amt, :quarterbreed_kit, :same_information)
 end






 def set_quarterbreed
   @quarterbreed = Quarterbreed.find(params[:id])
 end

end
