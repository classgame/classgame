class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :nivel,            default: 0
      t.integer :total_experience, default: 0
      t.integer :amount_exercises, default: 0
      t.integer :amount_courses,   default: 0

      t.timestamps null: false
    end
  end
end
