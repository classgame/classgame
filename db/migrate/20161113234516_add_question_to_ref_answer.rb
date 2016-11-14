class AddQuestionToRefAnswer < ActiveRecord::Migration
  def change
  	add_reference :answers, :question, index: true
  end
end
