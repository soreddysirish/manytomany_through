class AddAddressColumnToDocter < ActiveRecord::Migration
  def change
    add_column :docters, :address, :string
  end
end
