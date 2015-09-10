class ChangeCountryOnOrderSheets < ActiveRecord::Migration
  def change
    remove_column :order_sheets, :car_owner_country
    add_column :order_sheets, :car_owner_countr, :string
  end

end
