class AddChapterRefToText < ActiveRecord::Migration
  def change
  	add_reference :texts, :chapter, index: true
  end
end
