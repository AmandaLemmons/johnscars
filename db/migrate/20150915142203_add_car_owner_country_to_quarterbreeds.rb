class AddCarOwnerCountryToQuarterbreeds < ActiveRecord::Migration
  def change
        add_column :quarterbreeds, :car_owner_countr, :string
        add_column :quarterbreeds, :ship_to_countr, :string

  end
end
