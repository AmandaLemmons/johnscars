class CreateQuarterbreeds < ActiveRecord::Migration
  def change
    create_table :quarterbreeds do |t|

      t.timestamps null: false
    end
  end
end
