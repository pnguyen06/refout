class ChangeDescriptionFormatInHeadhunters < ActiveRecord::Migration
  def up
  	change_column :headhunters, :CompanyDescription, :text
  end

  def down
  	change_column :headhunters, :CompanyDescription, :string
  end
end
