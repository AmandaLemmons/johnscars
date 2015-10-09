class Tr7sController < ApplicationController
  before_action :set_tr7, only:[:show, :edit, :update]
  before_action :set_same_shipping, only: [:show, :edit, :update]
  before_action :set_tr7_kit, only: [:show, :edit, :update]
  before_action :set_ac_hoses, only: [:show, :edit, :update]
  before_action :set_jci_headers, only: [:show, :edit, :update]
  before_action :set_fuel_injection_vc, only: [:show, :edit, :update]
  before_action :set_driveshaft_adaptor, only: [:show, :edit, :update]
  before_action :set_electrolock, only: [:show, :edit, :update]
  before_action :set_subtotal, only: [:show, :edit, :update]
  before_action :set_sales_tax, only: [:show, :edit, :update]
  before_action :set_total, only: [:show, :edit, :update]



  def new
    @tr7 = Tr7.new
  end

 def create
   @tr7 = Tr7.new(tr7_params)
   if @tr7.save
     redirect_to tr7_path(@tr7.id)
   else
     render :index
   end
 end

 def index
    @tr7 = Tr7.new
 end

 def show
 end

 def edit
 end

 def update
   if @tr7.update(tr7_params)
     @tr7.save
     redirect_to tr7_path(@tr7.id)
   else
     render :edit
   end
 end

 private

 def tr7_params
   params.require(:tr7).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :tr7s_type, :tr7s_vin, :tr7s_year, :tr7s_month_built, :tr7s_year_built, :tr7s_engine, :tr7s_ac, :tr7s_transmission_type, :tr7s_rear_axle_ratio, :tr7s_tire_size, :tr7s_expansion_tank, :buick_v6_engine, :buick_v6_year, :buick_v6_tailhousing_length, :buick_v6_manual, :buick_v6_trans_year, :tr7s_kit, :ac_hoses, :jci_headers, :fuel_injection_vc, :driveshaft_adaptor, :electrolock, :other_kit_options, :credit_amt, :credit_description, :subtotal, :freight, :sales_tax, :total, :buick_v6_cid, :comments, :same_information)
 end

 def set_tr7
   @tr7 = Tr7.find(params[:id])
 end

 def set_same_shipping
   @tr7 = Tr7.find(params[:id])
   if @tr7.same_information == true
     @tr7.ship_to_full_name = @tr7.car_owner_full_name

     @tr7.ship_to_address = @tr7.car_owner_address

     @tr7.ship_to_city = @tr7.car_owner_city

     @tr7.ship_to_state = @tr7.car_owner_state

     @tr7.ship_to_zip = @tr7.car_owner_zip

     @tr7.ship_to_email = @tr7.car_owner_email

     @tr7.ship_to_phone = @tr7.car_owner_home_phone

     @tr7.ship_to_fax = @tr7.car_owner_fax
   end
   @tr7.save
 end

 def set_tr7_kit
   @tr7 = Tr7.find(params[:id])
   @tr7.kit_amt = 795
   @tr7.save
 end

 def set_ac_hoses
   @tr7 = Tr7.find(params[:id])
   if @tr7.ac_hoses == true
      @tr7.ac_hoses_amt = 55
    else
       @tr7.ac_hoses_amt = 0
   end
   @tr7.save!
 end

 def set_jci_headers
   @tr7 = Tr7.find(params[:id])
   if @tr7.jci_headers == true
      @tr7.jci_headers_amt = 225
    else
       @tr7.jci_headers_amt = 0
   end
   @tr7.save!
 end

 def set_fuel_injection_vc
   @tr7 = Tr7.find(params[:id])
   if @tr7.fuel_injection_vc == true
      @tr7.fuel_injection_vc_amt = 100
    else
       @tr7.fuel_injection_vc_amt = 0
   end
   @tr7.save!
 end

 def set_driveshaft_adaptor
   @tr7 = Tr7.find(params[:id])
   if @tr7.driveshaft_adaptor == true
      @tr7.driveshaft_adaptor_amt = 75
    else
       @tr7.driveshaft_adaptor_amt = 0
   end
   @tr7.save!
 end

 def set_electrolock
   @tr7 = Tr7.find(params[:id])
   if @tr7.electrolock == true
      @tr7.electrolock_amt = 95
    else
       @tr7.electrolock_amt = 0
   end
   @tr7.save!
 end

 def set_subtotal
   @tr7 = Tr7.find(params[:id])

   @tr7.subtotal = @tr7.kit_amt + @tr7.ac_hoses_amt + @tr7.jci_headers_amt + @tr7.fuel_injection_vc_amt + @tr7.driveshaft_adaptor_amt +   @tr7.electrolock_amt - @tr7.credit_amt
   @tr7.save!
 end

 def set_sales_tax
   @tr7 = Tr7.find(params[:id])

   if @tr7.ship_to_state == "Texas"
     @tr7.sales_tax = (@tr7.subtotal) * (0.0825)
     @tr7.sales_tax
   else
     @tr7.sales_tax = 0
   end
     @tr7.save!
 end

 def set_total
   @tr7 = Tr7.find(params[:id])

   @tr7.total = @tr7.subtotal + @tr7.sales_tax
   @tr7.save
 end


end
