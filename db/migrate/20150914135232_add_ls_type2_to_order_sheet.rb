class AddLsType2ToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :ls_type2, :string

  end
end
