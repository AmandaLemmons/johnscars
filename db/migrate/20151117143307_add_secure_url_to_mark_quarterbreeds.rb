class AddSecureUrlToMarkQuarterbreeds < ActiveRecord::Migration
  def change
    add_column :mark_quarterbreeds, :secure_url, :string
  end
end
