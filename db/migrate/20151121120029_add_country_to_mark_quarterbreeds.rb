class AddCountryToMarkQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :ship_to_country, :string
    add_column :mark_quarterbreeds, :car_owner_country, :string

    add_column :tr7s, :ship_to_country, :string
    add_column :tr7s, :car_owner_country, :string

    add_column :xj6_quarterbreeds, :ship_to_country, :string
    add_column :xj6_quarterbreeds, :car_owner_country, :string


  end
end
