class AddGearDriveStarterToXj6Quarterbreeds < ActiveRecord::Migration
  def change
    add_column :xj6_quarterbreeds, :gear_drive_starter, :boolean
    add_column :xj6_quarterbreeds, :gear_drive_starter_amt, :decimal, :precision => 10, :scale => 2

  end
end
