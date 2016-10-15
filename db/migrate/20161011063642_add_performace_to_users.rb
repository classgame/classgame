class AddPerformaceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :performace, index: true, foreign_key: true
  end
end
