class AddUserRefToAttempts < ActiveRecord::Migration
  def change
  	add_reference :attempts, :user, index: true 
  end
end
