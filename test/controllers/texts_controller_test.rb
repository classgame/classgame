require 'test_helper'

class TextsControllerTest < ActionController::TestCase
  setup do
    @text = texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text" do
    assert_difference('Text.count') do
      post :create, text: { description: @text.description, experience: @text.experience, text: @text.text, title: @text.title }
    end

    assert_redirected_to text_path(assigns(:text))
  end

  test "should show text" do
    get :show, id: @text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text
    assert_response :success
  end

  test "should update text" do
    patch :update, id: @text, text: { description: @text.description, experience: @text.experience, text: @text.text, title: @text.title }
    assert_redirected_to text_path(assigns(:text))
  end

  test "should destroy text" do
    assert_difference('Text.count', -1) do
      delete :destroy, id: @text
    end

    assert_redirected_to texts_path
  end
end
