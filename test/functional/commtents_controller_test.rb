require 'test_helper'

class CommtentsControllerTest < ActionController::TestCase
  setup do
    @commtent = commtents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commtents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commtent" do
    assert_difference('Commtent.count') do
      post :create, commtent: { content: @commtent.content }
    end

    assert_redirected_to commtent_path(assigns(:commtent))
  end

  test "should show commtent" do
    get :show, id: @commtent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commtent
    assert_response :success
  end

  test "should update commtent" do
    put :update, id: @commtent, commtent: { content: @commtent.content }
    assert_redirected_to commtent_path(assigns(:commtent))
  end

  test "should destroy commtent" do
    assert_difference('Commtent.count', -1) do
      delete :destroy, id: @commtent
    end

    assert_redirected_to commtents_path
  end
end
