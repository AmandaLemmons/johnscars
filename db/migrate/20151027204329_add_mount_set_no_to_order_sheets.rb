class AddMountSetNoToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :add_mount_set_already_bought, :boolean
    add_column :order_sheets, :add_mount_set_not_jci, :boolean
  end
end
