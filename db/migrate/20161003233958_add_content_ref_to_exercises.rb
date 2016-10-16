class AddContentRefToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :content, index: true
  end
end
