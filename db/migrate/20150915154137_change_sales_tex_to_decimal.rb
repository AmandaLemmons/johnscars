class ChangeSalesTexToDecimal < ActiveRecord::Migration
  def change
    change_column :quarterbreeds, :sales_tex, :decimal, :precision => 10, :scale => 2

  end
end
