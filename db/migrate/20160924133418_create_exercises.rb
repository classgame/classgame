class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.string :nivel
      t.integer :experience

      t.timestamps null: false
    end
  end
end
