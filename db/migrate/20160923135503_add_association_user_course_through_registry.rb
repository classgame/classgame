class AddAssociationUserCourseThroughRegistry < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :nivel
      t.integer :workload 
      t.boolean :active
      t.boolean :completed_edition
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
