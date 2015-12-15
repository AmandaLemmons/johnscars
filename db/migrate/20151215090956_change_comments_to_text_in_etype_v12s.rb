class ChangeCommentsToTextInEtypeV12s < ActiveRecord::Migration
  def change
    change_column :etype_v12s, :comments, :text
    change_column :etype_v12s, :impression_staff, :text

  end
end
