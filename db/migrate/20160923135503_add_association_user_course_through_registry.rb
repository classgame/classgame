class AddAssociationUserCourseThroughRegistry < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :image
      t.string :trailer
      t.string :title
      t.string :description
      t.string :nivel
      t.integer :workload 
      t.boolean :active
      t.boolean :completed_edition
      t.belongs_to :category, index: true
      
      t.timestamps
    end
     
    create_table :registries do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
      t.boolean :active
      t.boolean :finished_course
      t.string :limit_date
      
      t.timestamps
    end
  end
end
