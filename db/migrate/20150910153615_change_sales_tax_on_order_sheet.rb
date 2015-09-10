class ChangeSalesTaxOnOrderSheet < ActiveRecord::Migration
  def change
    change_column :order_sheets, :sales_tax, :decimal, :precision => 10, :scale => 2
  end
end
