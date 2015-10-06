class AddCommentsToTr7s < ActiveRecord::Migration
  def change
    add_column :tr7s, :comments, :string
    add_column :tr7s, :same_information, :string

  end
end
