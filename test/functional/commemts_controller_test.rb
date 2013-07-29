require 'test_helper'

class CommemtsControllerTest < ActionController::TestCase
  setup do
    @commemt = commemts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commemts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commemt" do
    assert_difference('Commemt.count') do
      post :create, commemt: { content: @commemt.content, post_id: @commemt.post_id }
    end

    assert_redirected_to commemt_path(assigns(:commemt))
  end

  test "should show commemt" do
    get :show, id: @commemt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commemt
    assert_response :success
  end

  test "should update commemt" do
    put :update, id: @commemt, commemt: { content: @commemt.content, post_id: @commemt.post_id }
    assert_redirected_to commemt_path(assigns(:commemt))
  end

  test "should destroy commemt" do
    assert_difference('Commemt.count', -1) do
      delete :destroy, id: @commemt
    end

    assert_redirected_to commemts_path
  end
end
