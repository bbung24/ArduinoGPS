class AddInfowindowToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :infowindow, :string
  end
end
