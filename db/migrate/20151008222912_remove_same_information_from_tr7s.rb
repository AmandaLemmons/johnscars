class RemoveSameInformationFromTr7s < ActiveRecord::Migration
  def change
    remove_column :tr7s, :same_information

    add_column   :tr7s, :same_information, :boolean

  end
end
