require 'test_helper'

class FeedLikesControllerTest < ActionController::TestCase
  setup do
    @feed_like = feed_likes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feed_likes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed_like" do
    assert_difference('FeedLike.count') do
      post :create, feed_like: {  }
    end

    assert_redirected_to feed_like_path(assigns(:feed_like))
  end

  test "should show feed_like" do
    get :show, id: @feed_like
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed_like
    assert_response :success
  end

  test "should update feed_like" do
    put :update, id: @feed_like, feed_like: {  }
    assert_redirected_to feed_like_path(assigns(:feed_like))
  end

  test "should destroy feed_like" do
    assert_difference('FeedLike.count', -1) do
      delete :destroy, id: @feed_like
    end

    assert_redirected_to feed_likes_path
  end
end
