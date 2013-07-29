require 'test_helper'

class Commtent1sControllerTest < ActionController::TestCase
  setup do
    @commtent1 = commtent1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commtent1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commtent1" do
    assert_difference('Commtent1.count') do
      post :create, commtent1: { content: @commtent1.content }
    end

    assert_redirected_to commtent1_path(assigns(:commtent1))
  end

  test "should show commtent1" do
    get :show, id: @commtent1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commtent1
    assert_response :success
  end

  test "should update commtent1" do
    put :update, id: @commtent1, commtent1: { content: @commtent1.content }
    assert_redirected_to commtent1_path(assigns(:commtent1))
  end

  test "should destroy commtent1" do
    assert_difference('Commtent1.count', -1) do
      delete :destroy, id: @commtent1
    end

    assert_redirected_to commtent1s_path
  end
end
