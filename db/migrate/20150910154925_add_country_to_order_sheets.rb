class AddCountryToOrderSheets < ActiveRecord::Migration
  def change

    add_column :order_sheets, :car_owner_country, :string

  end
end
