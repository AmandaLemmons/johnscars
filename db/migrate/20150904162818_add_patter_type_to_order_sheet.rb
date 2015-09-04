class AddPatterTypeToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :pattern_type, :string

  end
end
