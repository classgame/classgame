class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.string :description
      t.integer :experience

      t.timestamps null: false
    end
  end
end
