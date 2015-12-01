class AddRearAxleRatioOtherToQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :quarterbreeds, :rear_axle_ratio_other, :string
  end
end
