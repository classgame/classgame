class AddChapterRefToVideo < ActiveRecord::Migration
  def change
  	add_reference :videos, :chapter, index: true
  end
end
