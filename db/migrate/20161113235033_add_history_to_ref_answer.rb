class AddHistoryToRefAnswer < ActiveRecord::Migration
  def change
  	add_reference :answers, :history, index: true
  end
end
