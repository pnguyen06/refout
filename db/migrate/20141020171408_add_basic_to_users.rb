class AddBasicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :revenue, :string
    add_column :users, :stock, :string
    add_column :users, :employees, :string
    add_column :users, :ceo, :string
    add_column :users, :headquarters, :string
  end
end
