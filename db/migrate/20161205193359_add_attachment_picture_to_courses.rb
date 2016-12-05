class AddAttachmentPictureToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :courses, :picture
  end
end
