class AddCarOwnerToQuearterbreed < ActiveRecord::Migration
  def change
    add_column :quarterbreeds, :car_owner_where_find_us, :string

  end
end
