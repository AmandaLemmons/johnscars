class RenameTypeColumnToDatsunType < ActiveRecord::Migration
  def change
    remove_column :datsun_zcars, :type, :string
    add_column :datsun_zcars, :datsun_type, :string
  end
end
