class Tr7sController < ApplicationController
  before_action :set_tr7, only:[:show, :edit, :update, :print_tr7_pdf]

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

 def print_tr7_pdf
   respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :encoding => 'utf-8',
        :template => 'tr7s/print_tr7_pdf.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
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
   params.require(:tr7).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :tr7s_type, :tr7s_vin, :tr7s_year, :tr7s_month_built, :tr7s_year_built, :tr7s_engine, :tr7s_ac, :tr7s_transmission_type, :tr7s_rear_axle_ratio, :tr7s_tire_size, :tr7s_expansion_tank, :buick_v6_engine, :buick_v6_year, :buick_v6_tailhousing_length, :buick_v6_manual, :buick_v6_trans_year, :tr7s_kit, :ac_hoses, :jci_headers, :fuel_injection_vc, :driveshaft_adaptor, :electrolock, :other_kit_options, :credit_amt, :credit_description, :subtotal, :freight, :sales_tax, :total, :buick_v6_cid, :comments, :same_information, :ship_to_countr, :car_owner_countr, :car_owner_where_find_us, :other_type, :other_rear_axle_ratio, :headers_3800, :headers_3800_amt

)
 end

 def set_tr7
   @tr7 = Tr7.find(params[:id])
   @tr7.set_same_shipping
   @tr7.set_home_phone
   @tr7.set_work_phone
   @tr7.set_ship_to_phone
   @tr7.set_car_owner_fax
   @tr7.set_ship_to_fax
   @tr7.set_tr7_kit
   @tr7.set_ac_hoses
   @tr7.set_jci_headers
   @tr7.set_fuel_injection_vc
   @tr7.set_driveshaft_adaptor
   @tr7.set_electrolock
   @tr7.set_headers_3800
   @tr7.set_subtotal
   @tr7.set_sales_tax
   @tr7.set_total
 end

end
