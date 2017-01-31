class AddUserRefToHistory < ActiveRecord::Migration
  def change
  	add_reference :histories, :user, index: true
  end
end
