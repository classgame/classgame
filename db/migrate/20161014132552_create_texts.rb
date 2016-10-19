class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title
      t.string :text
      t.string :description
      t.integer :experience
      t.integer :position

      t.timestamps null: false
    end
  end
end
