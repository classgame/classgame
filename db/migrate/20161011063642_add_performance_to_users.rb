class AddPerformanceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :performance, index: true, foreign_key: true
  end
end
