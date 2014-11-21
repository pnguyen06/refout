class RemoveGeographyToBanks < ActiveRecord::Migration
  def change
    remove_column :banks, :geography, :text
  end
end
