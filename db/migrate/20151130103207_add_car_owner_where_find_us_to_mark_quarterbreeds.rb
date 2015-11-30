class AddCarOwnerWhereFindUsToMarkQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :car_owner_where_find_us, :string
    add_column :tr7s, :car_owner_where_find_us, :string
    add_column :xj6_quarterbreeds, :car_owner_where_find_us, :string


  end
end
