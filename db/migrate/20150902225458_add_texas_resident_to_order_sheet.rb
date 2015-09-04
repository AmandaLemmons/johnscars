class AddTexasResidentToOrderSheet < ActiveRecord::Migration
  def change
    add_column :order_sheets, :texas_resident, :boolean

  end
end
