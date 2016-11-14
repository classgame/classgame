class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.boolean :done, default: true
      t.integer :experience, default: 0
      t.integer :quantity, default: 1

      t.timestamps null: false
    end
  end
end
