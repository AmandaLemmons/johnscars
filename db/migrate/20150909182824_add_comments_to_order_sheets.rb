class AddCommentsToOrderSheets < ActiveRecord::Migration
  def change
    add_column :order_sheets, :comments, :text

  end
end
