class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string  :image
      t.string  :trailer
      t.string  :title
      t.string  :description
      t.boolean :active, default: true
      t.boolean :completed_edition, default: true
      t.integer :progress_percentage, default: 0
      
      t.timestamps null:false
    end
  end
end

