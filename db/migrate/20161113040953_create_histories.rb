class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.boolean :done, default: true
      t.integer :experience
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
