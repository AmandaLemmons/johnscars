class AddOtherSpeedoToQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :quarterbreeds, :other_speedo, :string

  end
end
