class AddTransTypeToDatsunZcars < ActiveRecord::Migration
  def change
    add_column :datsun_zcars, :rear_axl_ratio, :string
    add_column :datsun_zcars, :trans_type, :string

  end
end
