class CreateRegistries < ActiveRecord::Migration
  def change
    create_table :registries do |t|
      t.boolean :active
      t.boolean :finished_course
      t.string :limit_date
    
      t.timestamps null:false
    end
  end
end