class AddExerciseRefToQuestion < ActiveRecord::Migration
  def change
  	add_reference :questions, :exercise, index: true
  end
end
