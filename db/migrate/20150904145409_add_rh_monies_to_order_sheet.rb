class AddRhMoniesToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :rh_monies, :string

  end
end
