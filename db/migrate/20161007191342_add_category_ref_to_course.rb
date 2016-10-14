class AddCategoryRefToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :category, index: true, foreign_key: true
  end
end
