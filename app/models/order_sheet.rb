class OrderSheet < ActiveRecord::Base
  validates :zcar_vin, :car_owner_full_name, :car_owner_address, :car_owner_city,
:car_owner_state, :car_owner_zip, presence: true


  def set_add_mount_set
    if self.add_mount_set == "Yes"
      self.mount_set = 295
    elsif self.add_mount_set == "No, I already bought this"
      self.mount_set = 0
    else self.add_mount_set == "Not JCI car parts"
      self.mount_set = 0
    end
    self.save!

  end

  def set_trans_crossmember
    if self.trans_crossmember == true
      self.amt1 = 135
    else
      self.amt1 = 0
    end
    self.save!
  end

  def set_driveshaft
    if self.driveshaft == true
       self.amt2 = 255
     else
        self.amt2 = 0
    end
    self.save!
  end

  def set_speedometer
    if self.speedometer == true
       self.amt3 = 345
    else
      self.amt3 = 0
    end
    self.save!
  end

  def set_vital_liquids
    if self.vital_liquids == true
       self.amt4 = 105
    else
       self.amt4  = 0
    end
       self.save!

  end

  def set_header_set
    if self.header_set == true
       self.amt5 = 385
    else
       self.amt5  = 0
    end
     self.save!
  end

  def set_ac_compressor_mount_kit
    if self.ac_compressor_mount_kit == true
       self.amt6 = 450
    else
       self.amt6  = 0
    end
     self.save!
  end

  def set_ac_hose_kit
    if self.ac_hose_kit == true
       self.amt7 = 200
    else
       self.amt7  = 0
    end
     self.save!
  end

  def set_high_volume
    if self.high_volume == true
       self.amt8 = 165
    else
        self.amt8 = 0
    end
       self.save!
  end

  def set_subtotal
    self.subtotal = self.mount_set + self.amt1 + self.amt2 + self.amt3 + self.amt4 + self.amt5 + self.amt6 + self.amt7 + self.amt8
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
      self.ship_to_countr = self.car_owner_countr
    end
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
