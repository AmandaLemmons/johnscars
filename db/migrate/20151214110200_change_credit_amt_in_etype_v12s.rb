class ChangeCreditAmtInEtypeV12s < ActiveRecord::Migration
  def change
    change_column :etype_v12s, :credit_amt, :decimal, :default => 0
    change_column :mark_quarterbreeds, :credit_amt, :decimal, :default => 0
    change_column :quarterbreeds, :credit, :decimal, :default => 0
    change_column :tr7s, :credit_amt, :decimal, :default => 0
    change_column :xj6_quarterbreeds, :credit_amt, :decimal, :default => 0
    add_column :order_sheets, :credit_amt, :decimal, :default => 0


  end
end
