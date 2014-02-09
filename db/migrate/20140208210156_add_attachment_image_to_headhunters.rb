class AddAttachmentImageToHeadhunters < ActiveRecord::Migration
  def self.up
    change_table :headhunters do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :headhunters, :image
  end
end
