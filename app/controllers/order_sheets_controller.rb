class OrderSheetsController < ApplicationController
   before_action :set_order_sheet, only:[:show, :edit, :update]
   before_action :set_trans_crossmember, only: [:edit, :update, :show]
   before_action :set_driveshaft, only:[:edit, :update, :show]
   before_action :set_speedometer, only:[:edit, :update, :show]
   before_action :set_vital_liquids, only:[:edit, :update, :show]
   before_action :set_header_set, only:[:edit, :update, :show]
   before_action :set_ac_compressor_mount_kit, only:[:edit, :update, :show]
   before_action :set_ac_hose_kit, only:[:edit, :update, :show]
   before_action :set_high_volume, only:[:edit, :update, :show]
   before_action :set_same_shipping, only:[:edit, :update, :show]
   before_action :set_subtotal, only:[:edit, :update, :show]
   before_action :set_sales_tax, only:[:edit, :update, :show]
   before_action :set_total, only:[:edit, :update, :show]




   def new
     @order_sheet = OrderSheet.new
   end

  def create
    @order_sheet = OrderSheet.new(order_sheet_params)
    if @order_sheet.save
      redirect_to order_sheet_path(@order_sheet.id)
    else
      render :index
    end
  end

  def index
     @order_sheet = OrderSheet.new
  end

  def show
  end

  def edit
  end

  def update
    if @order_sheet.update(order_sheet_params)
      @order_sheet.save
      redirect_to order_sheet_path(@order_sheet.id)
    else
      render :edit
    end
  end




  private

  def order_sheet_params
    params.require(:order_sheet).permit(:car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_email, :car_owner_zip, :car_owner_home_phone, :car_owner_work_phone, :car_owner_fax, :car_owner_find_us, :car_owner_home_hours, :car_owner_work_hours, :car_owner_fax_hours, :ship_to_full_name, :ship_to_address, :ship_to_city, :ship_to_state, :ship_to_email, :ship_to_zip, :ship_to_phone, :ship_to_fax, :ship_to_contact_person, :zcar_type, :zcar_vin, :zcar_year, :zcar_month_built, :zcar_year_built, :trans_crossmember, :driveshaft, :speedometer, :vital_liquids, :header_set, :ac_compressor_mount_kit, :ac_hose_kit, :high_volume, :subtotal, :sales_tax, :total, :sign_date, :same_information, :ship_to_countr, :comments, :hole_size, :pilot_diameter, :pattern_type, :transmission_type, :transmission_detail, :amt2, :amt1, :amt3, :amt4, :amt5, :amt6, :amt7, :amt8, :amt9, :ls_type, :ls_year, :rh_monies, :car_owner_countr, :mount_set, :zcar_type2, :ls_type2, :car_owner_where_find_us, :other_differential_flange, :q45, :output_shaft)
  end

  def set_order_sheet
    @order_sheet = OrderSheet.find(params[:id])
  end

  def set_trans_crossmember
    if @order_sheet.trans_crossmember == true
      @order_sheet.amt1 = 135
    else
      @order_sheet.amt1 = 0
    end
    @order_sheet.save!
  end

  def set_driveshaft
    if @order_sheet.driveshaft == true
       @order_sheet.amt2 = 255
     else
        @order_sheet.amt2 = 0
    end
    @order_sheet.save!
  end

  def set_speedometer
    if @order_sheet.speedometer == true
       @order_sheet.amt3 = 345
    else
      @order_sheet.amt3 = 0
    end
    @order_sheet.save!
  end

  def set_vital_liquids
    if @order_sheet.vital_liquids == true
       @order_sheet.amt4 = 105
    else
       @order_sheet.amt4  = 0
    end
       @order_sheet.save!

  end

  def set_header_set
    if @order_sheet.header_set == true
       @order_sheet.amt5 = 385
    else
       @order_sheet.amt5  = 0
    end
     @order_sheet.save!
  end

  def set_ac_compressor_mount_kit
    if @order_sheet.ac_compressor_mount_kit == true
       @order_sheet.amt6 = 450
    else
       @order_sheet.amt6  = 0
    end
     @order_sheet.save!
  end

  def set_ac_hose_kit
    if @order_sheet.ac_hose_kit == true
       @order_sheet.amt7 = 200
    else
       @order_sheet.amt7  = 0
    end
     @order_sheet.save!
  end

  def set_high_volume
    if @order_sheet.high_volume == true
       @order_sheet.amt8 = 165
    else
        @order_sheet.amt8 = 0
    end
       @order_sheet.save!
  end

  def set_subtotal
    @order_sheet.subtotal = @order_sheet.mount_set + @order_sheet.amt1 + @order_sheet.amt2 + @order_sheet.amt3 + @order_sheet.amt4 + @order_sheet.amt5 + @order_sheet.amt6 + @order_sheet.amt7 + @order_sheet.amt8
    @order_sheet.save!
  end

  def set_sales_tax
    if @order_sheet.ship_to_state || @order_sheet.car_owner_state == "Texas"
      @order_sheet.sales_tax = (@order_sheet.subtotal) * (0.0825)
      @order_sheet.sales_tax
    else
      @order_sheet.sales_tax = 0
    end
      @order_sheet.save
  end

  def set_total
    @order_sheet.total = @order_sheet.subtotal + @order_sheet.sales_tax
  end

  def set_same_shipping
    if @order_sheet.same_information == true
      @order_sheet.ship_to_full_name = @order_sheet.car_owner_full_name

      @order_sheet.ship_to_address = @order_sheet.car_owner_address

      @order_sheet.ship_to_city = @order_sheet.car_owner_city

      @order_sheet.ship_to_state = @order_sheet.car_owner_state

      @order_sheet.ship_to_zip = @order_sheet.car_owner_zip

      @order_sheet.ship_to_email = @order_sheet.car_owner_email

      @order_sheet.ship_to_phone = @order_sheet.car_owner_home_phone

      @order_sheet.ship_to_fax = @order_sheet.car_owner_fax

      @order_sheet.ship_to_countr = @order_sheet.car_owner_countr

    end
  end

end
