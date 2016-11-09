require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get contents" do
    get :contents
    assert_response :success
  end

end
