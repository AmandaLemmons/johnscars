class Tr7 < ActiveRecord::Base
    validates :tr7s_vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, :same_information, :credit_amt, presence: true

  def set_same_shipping
    if self.same_information == true
      self.ship_to_full_name = self.car_owner_full_name
      self.ship_to_address = self.car_owner_address
      self.ship_to_city = self.car_owner_city
      self.ship_to_state = self.car_owner_state
      self.ship_to_zip = self.car_owner_zip
      self.ship_to_email = self.car_owner_email
      self.ship_to_phone = self.car_owner_home_phone
      self.ship_to_fax = self.car_owner_fax
    end
    self.save
  end

  def set_tr7_kit
    self.kit_amt = 795
    self.save
  end

  def set_ac_hoses
    if self.ac_hoses == true
       self.ac_hoses_amt = 55
     else
        self.ac_hoses_amt = 0
    end
    self.save!
  end

  def set_jci_headers
    if self.jci_headers == true
       self.jci_headers_amt = 225
     else
        self.jci_headers_amt = 0
    end
    self.save!
  end

  def set_fuel_injection_vc
    if self.fuel_injection_vc == true
       self.fuel_injection_vc_amt = 100
     else
        self.fuel_injection_vc_amt = 0
    end
    self.save!
  end

  def set_driveshaft_adaptor
    if self.driveshaft_adaptor == true
       self.driveshaft_adaptor_amt = 75
     else
        self.driveshaft_adaptor_amt = 0
    end
    self.save!
  end

  def set_electrolock
    if self.electrolock == true
       self.electrolock_amt = 95
     else
        self.electrolock_amt = 0
    end
    self.save!
  end

  def set_subtotal
    self.subtotal = self.kit_amt + self.ac_hoses_amt + self.jci_headers_amt + self.fuel_injection_vc_amt + self.driveshaft_adaptor_amt +   self.electrolock_amt - self.credit_amt
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



end
