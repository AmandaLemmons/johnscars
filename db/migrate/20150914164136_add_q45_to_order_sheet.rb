class AddQ45ToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :q45, :boolean
    add_column :order_sheets, :other_differential_flange, :boolean

  end
end
