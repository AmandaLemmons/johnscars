class CreateXj6Quarterbreeds < ActiveRecord::Migration
  def change
    create_table :xj6_quarterbreeds do |t|

      t.timestamps null: false
    end
  end
end
