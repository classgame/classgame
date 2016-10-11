require 'test_helper'

class ContentTypesControllerTest < ActionController::TestCase
  setup do
    @content_type = content_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_type" do
    assert_difference('ContentType.count') do
      post :create, content_type: { description: @content_type.description }
    end

    assert_redirected_to content_type_path(assigns(:content_type))
  end

  test "should show content_type" do
    get :show, id: @content_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_type
    assert_response :success
  end

  test "should update content_type" do
    patch :update, id: @content_type, content_type: { description: @content_type.description }
    assert_redirected_to content_type_path(assigns(:content_type))
  end

  test "should destroy content_type" do
    assert_difference('ContentType.count', -1) do
      delete :destroy, id: @content_type
    end

    assert_redirected_to content_types_path
  end
end
