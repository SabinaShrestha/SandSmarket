class AddAttachmentItemPhotoToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :item_photo
    end
  end

  def self.down
    remove_attachment :items, :item_photo
  end
end
