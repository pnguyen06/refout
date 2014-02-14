class AddHeadhunterIdToRecruiters < ActiveRecord::Migration
  def change
    add_column :recruiters, :headhunter_id, :integer
    add_index :recruiters, :headhunter_id
  end
end
