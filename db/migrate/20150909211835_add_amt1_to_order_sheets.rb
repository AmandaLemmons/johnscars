class AddAmt1ToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :amt1, :integer

  end
end
