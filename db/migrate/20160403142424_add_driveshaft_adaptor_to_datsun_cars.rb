class AddDriveshaftAdaptorToDatsunCars < ActiveRecord::Migration
  def change
    add_column :datsun_zcars, :driveshaft_adaptor, :boolean, :default => false
    add_column :datsun_zcars, :driveshaft_adaptor_amt, :decimal, :precision => 10, :scale => 2

  end
end
