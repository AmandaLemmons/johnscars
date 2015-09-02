class CreateOrderSheets < ActiveRecord::Migration
  def change
    create_table :order_sheets do |t|

      t.timestamps null: false
    end
  end
end
