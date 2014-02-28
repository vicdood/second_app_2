require 'test_helper'

class MinipostsControllerTest < ActionController::TestCase
  setup do
    @minipost = miniposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miniposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create minipost" do
    assert_difference('Minipost.count') do
      post :create, minipost: { content: @minipost.content, user_id: @minipost.user_id }
    end

    assert_redirected_to minipost_path(assigns(:minipost))
  end

  test "should show minipost" do
    get :show, id: @minipost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @minipost
    assert_response :success
  end

  test "should update minipost" do
    put :update, id: @minipost, minipost: { content: @minipost.content, user_id: @minipost.user_id }
    assert_redirected_to minipost_path(assigns(:minipost))
  end

  test "should destroy minipost" do
    assert_difference('Minipost.count', -1) do
      delete :destroy, id: @minipost
    end

    assert_redirected_to miniposts_path
  end
end
