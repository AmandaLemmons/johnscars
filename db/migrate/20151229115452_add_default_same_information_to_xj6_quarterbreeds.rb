class AddDefaultSameInformationToXj6Quarterbreeds < ActiveRecord::Migration
  def change
    change_column :xj6_quarterbreeds, :same_information,  :boolean, :default => true
    change_column :mark_quarterbreeds, :same_information,  :boolean, :default => true
    change_column :order_sheets, :same_information,  :boolean, :default => true
    change_column :quarterbreeds, :same_information,  :boolean, :default => true
    change_column :tr7s, :same_information,  :boolean, :default => true
    change_column :etype_v12s, :same_information, :boolean,  :default => true

  end
end
