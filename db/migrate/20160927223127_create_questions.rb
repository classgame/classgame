class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.integer :experience
      t.string :title
      t.string :nivel

      t.timestamps null: false
    end
  end
end
