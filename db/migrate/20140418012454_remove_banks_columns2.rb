class RemoveBanksColumns2 < ActiveRecord::Migration
  def up
    remove_column :banks, :geography, :text
    remove_column :banks, :industries, :text
    remove_column :banks, :products, :text
    remove_column :banks, :founded, :integer
  end

  def down
    add_column :banks, :geography, :text
    add_column :banks, :industries, :text
    add_column :banks, :products, :text
    add_column :banks, :founded, :integer
  end
end
