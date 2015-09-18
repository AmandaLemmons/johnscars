class QuarterbreedsController < ApplicationController
  before_action :set_quarterbreed, only:[:show, :edit, :update]
  before_action :set_same_shipping, only:[:show, :edit, :update]
  before_action :set_quarterbreed_kit, only:[:show, :edit, :update]
  before_action :set_driveshaft, only:[:show, :edit, :update]
  before_action :set_flywheel_core, only:[:show, :edit, :update]
  before_action :set_subtotal, only:[:show, :edit, :update]
  before_action :set_sales_tax, only:[:show, :edit, :update]
  before_action :set_total, only:[:show, :edit, :update]





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
   params.require(:quarterbreed).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :jaguar_type, :jaguar_vin, :jaguar_year, :jaguar_month_built, :jugaur_year_built, :engine_number, :engine_type, :tire_size, :tire_radius, :rear_axie_ratio, :speedo_number, :jaguar_trans, :flywheel_core, :draveshaft, :credit, :subtotal, :sales_tex, :texas_resident, :expedite, :total, :comments, :flywheel_core_amt, :driveshaft_amt, :quarterbreed_kit, :same_information, :car_owner_countr, :ship_to_countr, :car_owner_where_find_us)
 end

 def set_quarterbreed
   @quarterbreed = Quarterbreed.find(params[:id])
 end

 def set_same_shipping
   @quarterbreed = Quarterbreed.find(params[:id])
   if @quarterbreed.same_information == true
     @quarterbreed.ship_to_full_name = @quarterbreed.car_owner_full_name

     @quarterbreed.ship_to_address = @quarterbreed.car_owner_address

     @quarterbreed.ship_to_city = @quarterbreed.car_owner_city

     @quarterbreed.ship_to_state = @quarterbreed.car_owner_state

     @quarterbreed.ship_to_zip = @quarterbreed.car_owner_zip

     @quarterbreed.ship_to_email = @quarterbreed.car_owner_email

     @quarterbreed.ship_to_phone = @quarterbreed.car_owner_home_phone

     @quarterbreed.ship_to_fax = @quarterbreed.car_owner_fax

     @quarterbreed.ship_to_countr = @quarterbreed.car_owner_countr
   end
 end

 def set_quarterbreed_kit
   @quarterbreed.quarterbreed_kit = 895
   @quarterbreed.save
 end

 def set_driveshaft
   @quarterbreed = Quarterbreed.find(params[:id])
   if @quarterbreed.draveshaft == true
      @quarterbreed.driveshaft_amt = 265
    else
       @quarterbreed.driveshaft_amt = 0
   end
   @quarterbreed.save!
 end

 def set_flywheel_core
   @quarterbreed = Quarterbreed.find(params[:id])
   if @quarterbreed.flywheel_core == true
      @quarterbreed.flywheel_core_amt = 200
    else
       @quarterbreed.flywheel_core_amt = 0
   end
   @quarterbreed.save!
 end

 def set_subtotal
   @quarterbreed = Quarterbreed.find(params[:id])

   @quarterbreed.subtotal = @quarterbreed.quarterbreed_kit + @quarterbreed.driveshaft_amt +   @quarterbreed.flywheel_core_amt - @quarterbreed.credit
   @quarterbreed.save!
 end

 def set_sales_tax
   if @quarterbreed.ship_to_state == "Texas"
     @quarterbreed.sales_tex = (@quarterbreed.subtotal) * (0.0825)
     @quarterbreed.sales_tex
   else
     @quarterbreed.sales_tex = 0
   end
     @quarterbreed.save
 end

 def set_total
   @quarterbreed.total = @quarterbreed.subtotal + @quarterbreed.sales_tex
 end


end
