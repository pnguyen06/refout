class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :youtube
      t.string :size
      t.text :geography
      t.text :industries
      t.text :products
      t.integer :founded
      t.text :internship
      t.text :diversity
      t.text :underclass
      t.text :charity

      t.timestamps
    end
  end
end
