class AddCommentsToEtypeV12s < ActiveRecord::Migration
  def change
    add_column :etype_v12s, :comments, :string
  end
end
