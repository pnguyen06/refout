class ChangeDescriptionLimitInHeadhunters < ActiveRecord::Migration
  def up
  	change_column :headhunters, :CompanyDescription, :text, :limit => nil
  end

  def down
  	change_column :headhunters, :CompanyDescription, :text
  end
end
