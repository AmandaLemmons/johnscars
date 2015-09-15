class ChangeTotalToDecimal < ActiveRecord::Migration
  def change
    change_column :quarterbreeds, :total, :decimal, :precision => 10, :scale => 2
    change_column :quarterbreeds, :subtotal, :decimal, :precision => 10, :scale => 2
    change_column :quarterbreeds, :credit, :decimal, :precision => 10, :scale => 2

  end
end
