require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { ads: @post.ads, category: @post.category, description: @post.description, excerpt: @post.excerpt, format_post: @post.format_post, hide_post: @post.hide_post, image: @post.image, meta_description: @post.meta_description, meta_title: @post.meta_title, title: @post.title, user_id: @post.user_id }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { ads: @post.ads, category: @post.category, description: @post.description, excerpt: @post.excerpt, format_post: @post.format_post, hide_post: @post.hide_post, image: @post.image, meta_description: @post.meta_description, meta_title: @post.meta_title, title: @post.title, user_id: @post.user_id }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
