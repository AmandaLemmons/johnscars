class CreateEtypeV12s < ActiveRecord::Migration
  def change
    create_table :etype_v12s do |t|

      t.timestamps null: false
    end
  end
end
