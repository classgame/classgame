class AddContentRefToTexts < ActiveRecord::Migration
  def change
    add_reference :texts, :content, index: true
  end
end
