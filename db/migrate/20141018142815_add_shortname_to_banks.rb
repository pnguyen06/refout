class AddShortnameToBanks < ActiveRecord::Migration
  def change
    add_column :banks, :shortname, :string
  end
end
