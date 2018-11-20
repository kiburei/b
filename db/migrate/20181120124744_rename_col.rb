class RenameCol < ActiveRecord::Migration[5.0]
  def change
    rename_column :bills, :type, :ad_type
  end
end
