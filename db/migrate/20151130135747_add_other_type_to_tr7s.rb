class AddOtherTypeToTr7s < ActiveRecord::Migration
  def change
    add_column :tr7s, :other_type, :string
    add_column :tr7s, :other_rear_axle_ratio, :string

  end
end
