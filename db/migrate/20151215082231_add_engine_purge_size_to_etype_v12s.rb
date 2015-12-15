class AddEnginePurgeSizeToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :engine_purge_size, :string
  end
end
