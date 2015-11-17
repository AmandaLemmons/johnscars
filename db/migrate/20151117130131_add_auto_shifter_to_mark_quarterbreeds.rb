class AddAutoShifterToMarkQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :auto_shifter, :string
    add_column :mark_quarterbreeds, :rear_axle_ratio_other, :string
    add_column :mark_quarterbreeds, :speedo_other, :string



  end
end
