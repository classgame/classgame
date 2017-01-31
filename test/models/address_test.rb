require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Primeiro test salvando address" do
  	address = Address.new
  	assert address.save
	end
end
