require 'test_helper'

class TaksControllerTest < ActionController::TestCase
  setup do
    @tak = taks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tak" do
    assert_difference('Tak.count') do
      post :create, tak: @tak.attributes
    end

    assert_redirected_to tak_path(assigns(:tak))
  end

  test "should show tak" do
    get :show, id: @tak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tak.to_param
    assert_response :success
  end

  test "should update tak" do
    put :update, id: @tak.to_param, tak: @tak.attributes
    assert_redirected_to tak_path(assigns(:tak))
  end

  test "should destroy tak" do
    assert_difference('Tak.count', -1) do
      delete :destroy, id: @tak.to_param
    end

    assert_redirected_to taks_path
  end
end
