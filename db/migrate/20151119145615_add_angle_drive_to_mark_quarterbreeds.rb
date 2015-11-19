class AddAngleDriveToMarkQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :angle_drive, :boolean
    add_column :mark_quarterbreeds, :motor_fuel_injection, :boolean
    add_column :mark_quarterbreeds, :xj_engine_number, :string
    add_column :mark_quarterbreeds, :pipe_plugs, :boolean
    add_column :mark_quarterbreeds, :new_angle_drive, :boolean
    add_column :mark_quarterbreeds, :new_angle_drive_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :starter, :boolean
    add_column :mark_quarterbreeds, :starter_amt, :decimal, :precision => 10, :scale => 2
    add_column :mark_quarterbreeds, :trans_oil_cooler, :boolean
    add_column :mark_quarterbreeds, :trans_oil_cooler_amt, :decimal, :precision => 10, :scale => 2


    add_column :mark_quarterbreeds, :oil_filter, :boolean
    add_column :mark_quarterbreeds, :oil_filter_amt, :decimal, :precision => 10, :scale => 2

  end
end
