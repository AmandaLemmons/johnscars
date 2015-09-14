class ChangeZcarTypeToBoolean < ActiveRecord::Migration
  def change
    remove_column :order_sheets, :zcar_type2, :string
    add_column :order_sheets, :zcar_type2, :boolean

  end
end
