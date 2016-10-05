class CreateAlternatives < ActiveRecord::Migration
  def change
    create_table :alternatives do |t|
      t.string :description
      t.string :correct

      t.timestamps null: false
    end
  end
end
