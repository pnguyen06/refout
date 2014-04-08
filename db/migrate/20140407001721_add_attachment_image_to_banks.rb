class AddAttachmentImageToBanks < ActiveRecord::Migration
  def self.up
    change_table :banks do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :banks, :image
  end
end
