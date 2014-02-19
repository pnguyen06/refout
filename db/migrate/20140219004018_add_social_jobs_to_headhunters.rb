class AddSocialJobsToHeadhunters < ActiveRecord::Migration
  def change
    add_column :headhunters, :CompanyFacebook, :string
    add_column :headhunters, :CompanyTwitter, :string
    add_column :headhunters, :CompanyJobs, :text
  end
end
