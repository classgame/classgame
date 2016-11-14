class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.boolean :correct, default: false
      t.integer :experience, default: 0

      t.timestamps null: false
    end
  end
end
