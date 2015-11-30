class AddTransmissionYearToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :transmission_year, :string
  end
end
