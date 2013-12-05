class ChangeDataTypeForName < ActiveRecord::Migration
  def change
    change_column :locations, :name, :integer
  end
end
