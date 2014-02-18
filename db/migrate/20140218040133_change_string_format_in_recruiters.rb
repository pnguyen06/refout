class ChangeStringFormatInRecruiters < ActiveRecord::Migration
  
  def self.up
  	change_column :recruiters, :description, :text, :limit => nil
  end

  def self.down
  	change_column :recruiters, :description, :string
  end

end