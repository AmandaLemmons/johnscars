class AddLsYearToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :ls_year, :string

  end
end
