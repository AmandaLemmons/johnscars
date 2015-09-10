class AddMountSetToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :mount_set, :integer, :default => 295
  end
end
