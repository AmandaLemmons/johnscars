class CreateDatsunZcars < ActiveRecord::Migration
  def change
    create_table :datsun_zcars do |t|
      


      t.timestamps null: false
    end
  end
end
