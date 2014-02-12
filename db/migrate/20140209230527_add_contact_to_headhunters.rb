class AddContactToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :CompanyWebsite, :string
    add_column :headhunters, :CompanyLinkedin, :string
  end
end
