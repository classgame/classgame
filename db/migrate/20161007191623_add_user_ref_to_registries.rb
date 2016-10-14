class AddUserRefToRegistries < ActiveRecord::Migration
  def change
    add_reference :registries, :user, index: true, foreign_key: true
  end
end
