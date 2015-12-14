class AddSameInfoToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :same_information, :boolean, :default => false
  end
end
