class Quarterbreed < ActiveRecord::Base
    validates :jaguar_vin, :car_owner_full_name, :car_owner_address, :car_owner_city, :car_owner_state, :car_owner_zip, :same_information, :credit, presence: true

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

        self.ship_to_countr = self.car_owner_countr
      end
    end

    def set_quarterbreed_kit
      self.quarterbreed_kit = 895
      self.save
    end

    def set_driveshaft
      if self.draveshaft == true
         self.driveshaft_amt = 265
       else
          self.driveshaft_amt = 0
      end
      self.save!
    end

    def set_flywheel_core
      if self.flywheel_core == true
         self.flywheel_core_amt = 200
       else
          self.flywheel_core_amt = 0
      end
      self.save!
    end

    def set_subtotal
      self.subtotal = self.quarterbreed_kit + self.driveshaft_amt +   self.flywheel_core_amt - self.credit
      self.save!
    end

    def set_sales_tax
      if self.ship_to_state == "Texas"
        self.sales_tex = (self.subtotal) * (0.0825)
        self.sales_tex
      else
        self.sales_tex = 0
      end
        self.save
    end

    def set_total
      self.total = self.subtotal + self.sales_tex
    end

end
