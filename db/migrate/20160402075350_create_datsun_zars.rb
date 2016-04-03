class CreateDatsunZars < ActiveRecord::Migration
  def change
    create_table :datsun_zars do |t|


      t.timestamps null: false
    end
  end
end
