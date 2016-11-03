class AddChapterRefToExercise < ActiveRecord::Migration
  def change
  	add_reference :exercises, :chapter, index: true
  end
end
