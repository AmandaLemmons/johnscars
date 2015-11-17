class CreateMarkQuarterbreeds < ActiveRecord::Migration
  def change
    create_table :mark_quarterbreeds do |t|

      t.timestamps null: false
    end
  end
end
