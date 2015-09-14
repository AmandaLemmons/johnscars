class AddWhereFindUsToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :car_owner_where_find_us, :string

  end
end
