class CreateContent < ActiveRecord::Migration
  def change
    create_table :contents do |t|

      t.timestamp null: false
    end
  end
end
