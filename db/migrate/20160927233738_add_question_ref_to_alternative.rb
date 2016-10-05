class AddQuestionRefToAlternative < ActiveRecord::Migration
  def change
    add_reference :alternatives, :question, index: true
  end
end
