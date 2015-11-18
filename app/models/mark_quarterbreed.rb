class MarkQuarterbreed < ActiveRecord::Base
  validates :mark_quarterbreeds_before_vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, presence: true


  def set_mark_quarterbreeds_kit
    if self.mark_quarterbreeds_kit == "Yes"
      self.mark_quarterbreeds_kit_amt = 745
    elsif self.mark_quarterbreeds_kit == "No, I already bought this"
      self.mark_quarterbreeds_kit_amt = 0
    else self.mark_quarterbreeds_kit == "Not JCI car parts"
      self.mark_quarterbreeds_kit_amt = 0
    end
    self.save!

  end

  def set_mark_quarterbreeds_driveshaft
    if self.mark_quarterbreeds_driveshaft == true
      self.mark_quarterbreeds_driveshaft_amt = 165
    else
      self.mark_quarterbreeds_driveshaft_amt = 0
    end
    self.save!
  end

  def set_mark_quarterbreeds_electrolock
    if self.mark_quarterbreeds_electrolock == true
       self.mark_quarterbreeds_electrolock_amt = 85
     else
        self.mark_quarterbreeds_electrolock_amt = 0
    end
    self.save!
  end

  def set_subtotal
    self.subtotal = self.mark_quarterbreeds_kit_amt + self.mark_quarterbreeds_driveshaft_amt + self.mark_quarterbreeds_electrolock_amt + self.mark_quarterbreeds_other_price - self.credit_amt
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
      self.ship_to_email = self.car_owner_email
      self.ship_to_phone = self.car_owner_home_phone
      self.ship_to_fax = self.car_owner_fax
    end
  end
end