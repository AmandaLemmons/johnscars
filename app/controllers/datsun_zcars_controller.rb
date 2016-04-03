class DatsunZcarsController < ApplicationController
  before_action :set_datsun_zcar, only:[:show, :edit, :update, :print_datsun_zcar_pdf]

  def new
    @datsun_zcar = DatsunZcar.new
  end

 def create
   @datsun_zcar = DatsunZcar.new(datsun_zcar_params)
   if @datsun_zcar.save
     redirect_to datsun_zcar_path(@datsun_zcar.id)
   else
     render :index
   end
 end

 def index
   @datsun_zcar = DatsunZcar.new

 end

 def show
 end

 def print_datsun_zcar_pdf
   respond_to do |format|
      format.html
      format.pdf do
        render :pdf => 'file_name',
        :encoding => 'utf-8',
        :template => 'datsun_zcars/print_datsun_zcars_pdf.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end

 def edit
 end

 def update
   if @datsun_zcar.update(datsun_zcar_params)
     @datsun_zcar.save
     redirect_to datsun_zcar_path(@datsun_zcar.id)
   else
     render :edit
   end
 end


 private

 def datsun_zcars_params
   params.require(:datsun_zcars).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :car_owner_country, :car_owner_where_find_us, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :ship_to_country, :same_information, :comments, :type, :vin, :year, :month_built, :year_built, :engine, :rear_axle, :tire_size, :power_steering, :zcar_kit, :tach_calibration, :tach_calibration_without_smog, :ramshorn_w_smog, :ramshorn_w_egr_smog, :driveshaft_except_t400, :driveshaft_t400, :radiator, :electric_fan, :electrolock_t700, :other, :credit_amt, :tach_calibration_amt, :tach_calibration_without_smog_amt, :ramshorn_w_smog_amt, :ramshorn_w_egr_smog_amt, :driveshaft_except_t400_amt, :driveshaft_t400_amt, :radiator_amt, :electric_sfan_amt, :electrolock_t700_amt, :other_amt, :credit_description, :subtotal, :expedite, :sales_tax, :total)
 end

 # def set_datsun_zcar
 #    @datsun_zcar = EtypeV12.find(params[:id])
 #    @datsun_zcar.set_same_shipping
 #    @datsun_zcar.set_auto_trans_kit
 #    @datsun_zcar. set_manual_tras_kit
 #    @datsun_zcar.set_tach_calibration
 #    @datsun_zcar.set_fuel_injection_v8
 #    @datsun_zcar.set_overdrive
 #    @datsun_zcar.set_subtotal
 #    @datsun_zcar.set_sales_tax
 #    @datsun_zcar.set_total
 #    @datsun_zcar.set_home_phone
 #    @datsun_zcar.set_work_phone
 #    @datsun_zcar.set_ship_to_phone
 #    @datsun_zcar.set_car_owner_fax
 #    @datsun_zcar.set_ship_to_fax
 # end
end
