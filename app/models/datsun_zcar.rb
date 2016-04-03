class DatsunZcar < ActiveRecord::Base
  validates :vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, presence: true


def set_datsun_zcar
  self.kit_amt = 695
  self.save
end

def set_tach_calibration
  if self.tach_calibration == true
     self.tach_calibration_amt = 55
   else
      self.tach_calibration_amt = 0
  end
  self.save!
end

def set_tach_calibration_without_smog
  if self.tach_calibration_without_smog == true
     self.tach_calibration_without_smog_amt = 125
   else
      self.tach_calibration_without_smog_amt = 0
  end
  self.save!
end

def set_ramshorn_w_smog
  if self.ramshorn_w_smog == true
     self.ramshorn_w_smog_amt = 275
   else
      self.ramshorn_w_smog_amt = 0
  end
  self.save!
end

def set_ramshorn_w_egr_smog
  if self.ramshorn_w_egr_smog == true
     self.ramshorn_w_egr_smog_amt = 325
   else
      self.ramshorn_w_egr_smog_amt = 0
  end
  self.save!
end

def set_driveshaft_except_t400
  if self.driveshaft_except_t400 == true
     self.driveshaft_except_t400_amt = 165
   else
      self.driveshaft_except_t400_amt = 0
  end
  self.save!
end

def set_driveshaft_t400
  if self.driveshaft_t400 == true
     self.driveshaft_t400_amt = 205
   else
      self.driveshaft_t400_amt = 0
  end
  self.save!
end

def set_driveshaft_adaptor
  if self.driveshaft_adaptor == true
     self.driveshaft_adaptor_amt = 100
   else
      self.driveshaft_adaptor_amt = 0
  end
  self.save!
end

def set_radiator
  if self.radiator == true
     self.radiator_amt = 245
   else
      self.radiator_amt = 0
  end
  self.save!
end

def set_electric_fan
  if self.electric_fan == true
     self.electric_fan_amt = 94.25
   else
      self.electric_fan_amt = 0
  end
  self.save!
end

def set_electrolock_t700
  if self.electrolock_t700 == true
     self.electrolock_t700_amt = 85
   else
      self.electrolock_t700_amt = 0
  end
  self.save!
end

def set_subtotal
  self.subtotal = self.electrolock_t700_amt + self.electric_fan_amt + self.kit_amt + self.tach_calibration_amt + self.tach_calibration_without_smog_amt + self.ramshorn_w_smog_amt + self.ramshorn_w_egr_smog_amt + self.driveshaft_except_t400_amt + self.driveshaft_t400_amt + self.driveshaft_adaptor_amt + self.radiator_amt - self.credit_amt
  self.save!
end

def set_sales_tax
  if self.ship_to_state == "Texas"
    self.sales_tax = (self.subtotal) * (0.0825)
    self.sales_tax = self.sales_tax.round(2)
  else
    self.sales_tax = 0
  end
    self.save!
end

def set_total
  self.total = self.subtotal + self.sales_tax
  self.save
end

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
else
  end
  self.save
end

def set_home_phone
  if self.car_owner_home_phone.present?
    self.car_owner_home_phone.gsub!(/[^0-9]/, '')
    self.car_owner_home_phone.insert(3, '-').insert(7, '-')
  end
end

def set_work_phone
    if self.car_owner_work_phone.present?
      self.car_owner_work_phone.gsub!(/[^0-9]/, '')
      self.car_owner_work_phone.insert(3, '-').insert(7, '-')
    end
end

def set_ship_to_phone
    if self.ship_to_phone.present?
      self.ship_to_phone.gsub!(/[^0-9]/, '')
      self.ship_to_phone.insert(3, '-').insert(7, '-')
    end
end

def set_car_owner_fax
    if self.car_owner_fax.present?
      self.car_owner_fax.gsub!(/[^0-9]/, '')
      self.car_owner_fax.insert(3, '-').insert(7, '-')
    end
end

def set_ship_to_fax
    if self.ship_to_fax.present?
      self.ship_to_fax.gsub!(/[^0-9]/, '')
      self.ship_to_fax.insert(3, '-').insert(7, '-')
    end
end


end
