class AddGeographyToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :geography, :text
  end
end
