class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :experience
      t.string :ending_time
      t.boolean :approved
      
	  t.timestamps null: false
    end
  end
end
