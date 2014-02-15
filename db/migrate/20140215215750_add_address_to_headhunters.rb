class AddAddressToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :street1, :string
    add_column :headhunters, :city1, :string
    add_column :headhunters, :phone1, :string
    add_column :headhunters, :street2, :string
    add_column :headhunters, :city2, :string
    add_column :headhunters, :phone2, :string
    add_column :headhunters, :street3, :string
    add_column :headhunters, :city3, :string
    add_column :headhunters, :phone3, :string
  end
end
