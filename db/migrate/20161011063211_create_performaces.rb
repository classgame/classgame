class CreatePerformaces < ActiveRecord::Migration
  def change
    create_table :performaces do |t|
      t.integer :nivel
      t.integer :total_experience
      t.integer :amount_exercises
      t.integer :amount_courses

      t.timestamps null: false
    end
  end
end
