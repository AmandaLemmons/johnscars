class AddZcarType2ToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :zcar_type2, :string

  end
end
