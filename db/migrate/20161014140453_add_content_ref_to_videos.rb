class AddContentRefToVideos < ActiveRecord::Migration
  def change
    add_reference :videos, :content, index: true
  end
end
