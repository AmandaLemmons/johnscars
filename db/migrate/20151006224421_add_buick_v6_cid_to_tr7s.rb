class AddBuickV6CidToTr7s < ActiveRecord::Migration
  def change
    remove_column :tr7s, :tr7s_tire_ratio

    add_column :tr7s, :buick_v6_cid, :string
  end
end
