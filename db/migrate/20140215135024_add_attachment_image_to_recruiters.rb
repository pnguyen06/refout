class AddAttachmentImageToRecruiters < ActiveRecord::Migration
  def self.up
    change_table :recruiters do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :recruiters, :image
  end
end
