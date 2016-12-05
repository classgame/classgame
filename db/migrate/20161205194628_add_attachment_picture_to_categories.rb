class AddAttachmentPictureToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :categories, :picture
  end
end
