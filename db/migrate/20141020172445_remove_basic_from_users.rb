class RemoveBasicFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :revenue, :string
    remove_column :users, :stock, :string
    remove_column :users, :employees, :string
    remove_column :users, :ceo, :string
    remove_column :users, :headquarters, :string
  end
end
