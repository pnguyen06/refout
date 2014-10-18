class AddAttachmentImageToOffices < ActiveRecord::Migration
  def self.up
    change_table :offices do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :offices, :image
  end
end
