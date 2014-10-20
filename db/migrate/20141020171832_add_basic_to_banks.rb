class AddBasicToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :revenue, :string
    add_column :banks, :stock, :string
    add_column :banks, :employees, :string
    add_column :banks, :ceo, :string
    add_column :banks, :headquarters, :string
  end
end
