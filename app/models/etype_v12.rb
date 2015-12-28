class EtypeV12 < ActiveRecord::Base
  validates :vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, presence: true


  def set_same_shipping
    if self.same_information == true
      self.ship_to_full_name = self.car_owner_full_name
      self.ship_to_address = self.car_owner_address
      self.ship_to_city = self.car_owner_city
      self.ship_to_state = self.car_owner_state
      self.ship_to_zip = self.car_owner_zip
      self.ship_to_country = self.car_owner_country
      self.ship_to_email = self.car_owner_email
      self.ship_to_phone = self.car_owner_home_phone
      self.ship_to_fax = self.car_owner_fax
    end
  end

  def set_auto_trans_kit
    if self.auto_trans_kit == true
      self.auto_trans_kit_amt = 1255
    else
      self.auto_trans_kit_amt = 0
    end
  end

  def set_manual_tras_kit
    if self.manual_tras_kit == true
      self.manual_tras_kit_amt = 1500
    else
      self.manual_tras_kit_amt = 0
    end
  end

  def set_tach_calibration
    if self.tach_calibration == true
      self.tach_calibration_amt = 59
    else
      self.tach_calibration_amt = 0
    end
  end

  def set_fuel_injection_v8
    if self.fuel_injection_v8 == true
      self.fuel_injection_v8_amt = 100
    else
      self.fuel_injection_v8_amt = 0
    end
  end

  def set_overdrive
    if self.overdrive == true
      self.overdrive_amt = 50
    else
      self.overdrive_amt = 0
    end
  end

  def set_subtotal
    self.subtotal = (self.auto_trans_kit_amt + self.manual_tras_kit_amt + self.tach_calibration_amt + self.fuel_injection_v8_amt + self.overdrive_amt - self.credit_amt).round(2)
  end

  def set_sales_tax
    if self.ship_to_state == "Texas"
      self.sales_tax = ((self.subtotal) * (0.0825)).round(2)
    else
      self.sales_tax = 0
    end
  end

  def set_total
    self.total = (self.subtotal + self.sales_tax).round(2)
  end



end
