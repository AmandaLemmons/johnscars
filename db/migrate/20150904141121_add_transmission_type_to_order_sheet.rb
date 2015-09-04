class AddTransmissionTypeToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :transmission_type, :string
    add_column :order_sheets, :transmission_detail, :string
    add_column :order_sheets, :ls_type, :string
    add_column :order_sheets, :hole_size, :string
    add_column :order_sheets, :pilot_diameter, :string




  end
end
