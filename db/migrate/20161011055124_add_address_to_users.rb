class AddAddressToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :address, index: true, foreign_key: true
  end
end
