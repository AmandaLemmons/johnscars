class QuarterbreedsController < ApplicationController
  before_action :set_quarterbreed, only:[:show, :edit, :update, :print_quarterbreeds_pdf]

  def new
    @quarterbreed = Quarterbreed.new
  end

 def create
   @quarterbreed = Quarterbreed.new(quarterbreed_params)
   if @quarterbreed.save
     redirect_to quarterbreed_path(@quarterbreed.id)
   else
     render :index
   end
 end

 def index
    @quarterbreed = Quarterbreed.new
 end

 def information
 end

 def show
 end

 def print_quarterbreeds_pdf
   respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :encoding => 'utf-8',
        :template => 'quarterbreeds/print_quarterbreeds_pdf.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
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
   params.require(:quarterbreed).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :jaguar_type, :jaguar_vin, :jaguar_year, :jaguar_month_built, :jugaur_year_built, :engine_number, :engine_type, :tire_size, :tire_radius, :rear_axie_ratio, :speedo_number, :jaguar_trans, :flywheel_core, :draveshaft, :credit, :subtotal, :sales_tex, :texas_resident, :expedite, :total, :comments, :flywheel_core_amt, :driveshaft_amt, :quarterbreed_kit, :same_information, :car_owner_countr, :ship_to_countr, :car_owner_where_find_us, :other_speedo, :rear_axle_ratio_other)
 end

 def set_quarterbreed
   @quarterbreed = Quarterbreed.find(params[:id])
   @quarterbreed.set_same_shipping
   @quarterbreed.set_quarterbreed_kit
   @quarterbreed.set_driveshaft
   @quarterbreed.set_flywheel_core
   @quarterbreed.set_subtotal
   @quarterbreed.set_sales_tax
   @quarterbreed.set_total
   @quarterbreed.set_home_phone
   @quarterbreed.set_work_phone
   @quarterbreed.set_ship_to_phone
   @quarterbreed.set_car_owner_fax
   @quarterbreed.set_ship_to_fax
 end


end
