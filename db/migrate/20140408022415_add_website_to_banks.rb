class AddWebsiteToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :website, :string
  end
end
