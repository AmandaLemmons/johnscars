class ChangeCountryNameInMarkQuarterbreeds < ActiveRecord::Migration
  def change

    remove_column :mark_quarterbreeds, :ship_to_country, :string
    remove_column :mark_quarterbreeds, :car_owner_country, :string

    remove_column :tr7s, :ship_to_country, :string
    remove_column :tr7s, :car_owner_country, :string

    remove_column :xj6_quarterbreeds, :ship_to_country, :string
    remove_column :xj6_quarterbreeds, :car_owner_country, :string


    add_column :mark_quarterbreeds, :ship_to_countr, :string
    add_column :mark_quarterbreeds, :car_owner_countr, :string
    add_column :tr7s, :ship_to_countr, :string
    add_column :tr7s, :car_owner_countr, :string

    add_column :xj6_quarterbreeds, :ship_to_countr, :string
    add_column :xj6_quarterbreeds, :car_owner_countr, :string
end
end
