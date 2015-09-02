class AddCountryToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :ship_to_countr, :string
    add_column :order_sheets, :same_information, :boolean


  end
end
