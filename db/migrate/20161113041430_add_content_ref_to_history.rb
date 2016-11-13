class AddContentRefToHistory < ActiveRecord::Migration
  def change
  	add_reference :histories, :content, index: true
  end
end
