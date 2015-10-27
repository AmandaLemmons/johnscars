class ChangeAddMountSetAlreadyBought < ActiveRecord::Migration
  def change
    add_column :order_sheets, :add_mount_set, :string
    remove_column :order_sheets, :add_mount_set_not_jci, :boolean
    remove_column :order_sheets, :add_mount_set_already_bought, :boolean

  end
end
