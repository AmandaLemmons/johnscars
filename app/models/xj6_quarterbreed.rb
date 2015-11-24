class Xj6Quarterbreed < ActiveRecord::Base
  validates :vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, presence: true


  def set_xj6_quarterbreeds_kit
    self.year.to_i

    if self.xj6_quarterbreedss_kit == "Yes" && self.year.to_i < 1982
      self.xj6_quarterbreedss_kit_amt = 695
    elsif self.xj6_quarterbreedss_kit == "Yes" && self.year.to_i >= 1982
      self.xj6_quarterbreedss_kit_amt = 795
    elsif self.xj6_quarterbreedss_kit == "No, I already bought this"
      self.xj6_quarterbreedss_kit_amt = 0
    else self.xj6_quarterbreedss_kit == "Not JCI car parts"
      self.xj6_quarterbreedss_kit_amt = 0
    end
    self.save!

  end

  def set_xj6_quarterbreeds_driveshaft
    if self.driveshaft == true
      self.driveshaft_amt = 265
    else
      self.driveshaft_amt = 0
    end
    self.save!
  end

  def set_torque_converter
    if self.torque_converter == true
       self.torque_converter_amt = 75
     else
        self.torque_converter_amt = 0
    end
    self.save!
  end

  def set_subtotal
    self.subtotal = self.xj6_quarterbreedss_kit_amt + self.driveshaft_amt + self.torque_converter_amt - self.credit_amt
    self.save!
  end

  def set_sales_tax
    if self.ship_to_state == "Texas"
      self.sales_tax = (self.subtotal) * (0.0825)
      self.sales_tax
    else
      self.sales_tax = 0
    end
      self.save
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
      self.ship_to_countr = self.car_owner_countr
      self.ship_to_email = self.car_owner_email
      self.ship_to_phone = self.car_owner_home_phone
      self.ship_to_fax = self.car_owner_fax
    end
  end
  end