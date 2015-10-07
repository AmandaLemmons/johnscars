class AddAmtToTr7s < ActiveRecord::Migration
  def change
    remove_column :tr7s, :tr7s_kit

    add_column :tr7s, :kit_amt, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :ac_hoses_amt, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :jci_headers_amt, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :fuel_injection_vc_amt, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :driveshaft_adaptor_amt, :decimal, :precision => 10, :scale => 2
    add_column :tr7s, :electrolock_amt, :decimal, :precision => 10, :scale => 2

  end
end
