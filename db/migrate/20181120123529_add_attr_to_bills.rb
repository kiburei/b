class AddAttrToBills < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :street, :string
    add_column :bills, :desc, :string
    add_column :bills, :type, :string
    add_column :bills, :location, :string
  end
end
