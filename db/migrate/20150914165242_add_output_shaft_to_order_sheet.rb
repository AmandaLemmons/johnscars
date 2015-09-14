class AddOutputShaftToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :output_shaft, :string

  end
end
