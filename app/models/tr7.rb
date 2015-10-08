class Tr7 < ActiveRecord::Base

  def set_tr7_kit
    @tr7 = Tr7.find(id)
    @tr7.kit_amt = 795
    @tr7.save
  end

  def set_ac_hoses
    @tr7 = Tr7.find(id)
    if @tr7.ac_hoses == true
       @tr7.ac_hoses_amt = 55
     else
        @tr7.ac_hoses_amt = 0
    end
    @tr7.save!
  end

  def set_jci_headers
    @tr7 = Tr7.find(id)
    if @tr7.jci_headers == true
       @tr7.jci_headers_amt = 225
     else
        @tr7.jci_headers_amt = 0
    end
    @tr7.save!
  end

  def set_fuel_injection_vc
    @tr7 = Tr7.find(id)
    if @tr7.fuel_injection_vc == true
       @tr7.fuel_injection_vc_amt = 100
     else
        @tr7.fuel_injection_vc_amt = 0
    end
    @tr7.save!
  end

  def set_driveshaft_adaptor
    @tr7 = Tr7.find(id)
    if @tr7.driveshaft_adaptor == true
       @tr7.driveshaft_adaptor_amt = 75
     else
        @tr7.driveshaft_adaptor_amt = 0
    end
    @tr7.save!
  end

  def set_electrolock
    @tr7 = Tr7.find(id)
    if @tr7.electrolock == true
       @tr7.electrolock_amt = 95
     else
        @tr7.electrolock_amt = 0
    end
    @tr7.save!
  end

  def set_subtotal
    @tr7 = Tr7.find(id)

    @tr7.subtotal = @tr7.kit_amt + @tr7.ac_hoses_amt + @tr7.jci_headers_amt + @tr7.fuel_injection_vc_amt + @tr7.driveshaft_adaptor_amt +   @tr7.electrolock_amt - @tr7.credit_amt
    @tr7.save!
  end

  def set_sales_tax
    @tr7 = Tr7.find(id)

    if @tr7.ship_to_state == "Texas"
      @tr7.sales_tax = (@tr7.subtotal) * (0.0825)
      @tr7.sales_tax
    else
      @tr7.sales_tax = 0
    end
      @tr7.save
  end

  def set_total
    @tr7 = Tr7.find(id)

    @tr7.total = @tr7.subtotal + @tr7.sales_tax
  end


end
