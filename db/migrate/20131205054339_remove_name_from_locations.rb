class RemoveNameFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :name
    add_column :locations, :infowindow, :string
  end
end
