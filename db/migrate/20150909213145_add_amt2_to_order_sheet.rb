class AddAmt2ToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :amt2, :integer
    add_column :order_sheets, :amt3, :integer
    add_column :order_sheets, :amt4, :integer
    add_column :order_sheets, :amt5, :integer
    add_column :order_sheets, :amt6, :integer
    add_column :order_sheets, :amt7, :integer
    add_column :order_sheets, :amt8, :integer
    add_column :order_sheets, :amt9, :integer



  end
end
