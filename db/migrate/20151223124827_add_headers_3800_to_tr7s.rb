class AddHeaders3800ToTr7s < ActiveRecord::Migration
  def change
    add_column :tr7s, :headers_3800, :boolean
    add_column :tr7s, :headers_3800_amt, :decimal, :precision => 10, :scale => 2

  end
end
