class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :title
      t.string :description
      t.integer :experience
      t.integer :position

      t.timestamps null: false
    end
  end
end
