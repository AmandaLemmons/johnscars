class AddYesToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :rh_monies_yes, :boolean

  end
end
