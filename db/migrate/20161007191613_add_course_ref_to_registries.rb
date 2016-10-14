class AddCourseRefToRegistries < ActiveRecord::Migration
  def change
    add_reference :registries, :course, index: true, foreign_key: true
  end
end
