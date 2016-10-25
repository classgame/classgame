class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :image
      t.string :image_cover
      t.string :trailer
      t.string :title
      t.string :description
      t.string :nivel
      t.integer :workload 
      t.boolean :active
      t.boolean :completed_edition
      
      t.timestamps null:false
    end
  end
end

