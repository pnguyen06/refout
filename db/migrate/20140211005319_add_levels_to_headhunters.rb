class AddLevelsToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :CompanyUndergrad, :boolean
    add_column :headhunters, :CompanyPreMBA, :boolean
    add_column :headhunters, :CompanyPostMBA, :boolean
    add_column :headhunters, :CompanyExecutive, :boolean
  end
end
