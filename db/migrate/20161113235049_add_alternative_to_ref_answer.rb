class AddAlternativeToRefAnswer < ActiveRecord::Migration
  def change
  	add_reference :answers, :alternative, index: true
  end
end
