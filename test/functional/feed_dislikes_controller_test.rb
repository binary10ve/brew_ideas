require 'test_helper'

class FeedDislikesControllerTest < ActionController::TestCase
  setup do
    @feed_dislike = feed_dislikes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feed_dislikes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feed_dislike" do
    assert_difference('FeedDislike.count') do
      post :create, feed_dislike: {  }
    end

    assert_redirected_to feed_dislike_path(assigns(:feed_dislike))
  end

  test "should show feed_dislike" do
    get :show, id: @feed_dislike
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feed_dislike
    assert_response :success
  end

  test "should update feed_dislike" do
    put :update, id: @feed_dislike, feed_dislike: {  }
    assert_redirected_to feed_dislike_path(assigns(:feed_dislike))
  end

  test "should destroy feed_dislike" do
    assert_difference('FeedDislike.count', -1) do
      delete :destroy, id: @feed_dislike
    end

    assert_redirected_to feed_dislikes_path
  end
end
