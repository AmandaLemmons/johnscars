class AddEngineModelToXj6Quarterbreed < ActiveRecord::Migration
  def change
    add_column :xj6_quarterbreeds, :engine_model, :string
  end
end
