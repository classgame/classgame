class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string  :description
      t.integer :experience
      t.integer :position
      t.string  :title
      t.string  :nivel
      t.string  :type

      t.timestamps null: false
    end
  end
end
