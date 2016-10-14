class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :title
      t.string :description
      t.string :experience

      t.timestamps null: false
    end
  end
end
