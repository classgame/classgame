require 'test_helper'

class PerformacesControllerTest < ActionController::TestCase
  setup do
    @performace = performaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performace" do
    assert_difference('Performace.count') do
      post :create, performace: { amount_courses: @performace.amount_courses, amount_exercises: @performace.amount_exercises, nivel: @performace.nivel, total_experience: @performace.total_experience }
    end

    assert_redirected_to performace_path(assigns(:performace))
  end

  test "should show performace" do
    get :show, id: @performace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performace
    assert_response :success
  end

  test "should update performace" do
    patch :update, id: @performace, performace: { amount_courses: @performace.amount_courses, amount_exercises: @performace.amount_exercises, nivel: @performace.nivel, total_experience: @performace.total_experience }
    assert_redirected_to performace_path(assigns(:performace))
  end

  test "should destroy performace" do
    assert_difference('Performace.count', -1) do
      delete :destroy, id: @performace
    end

    assert_redirected_to performaces_path
  end
end
