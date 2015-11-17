class ChangeMarkKitToString < ActiveRecord::Migration
  def change
    change_column :mark_quarterbreeds, :mark_quarterbreeds_kit, :string
  end
end
