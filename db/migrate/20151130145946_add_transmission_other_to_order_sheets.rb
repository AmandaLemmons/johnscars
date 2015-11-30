class AddTransmissionOtherToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :transmission_other, :string

  end
end
