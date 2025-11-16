require "test_helper"

class Api::V1::BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_blogs_path
    assert_response :success
  end

  test "should get create" do
    post api_v1_blogs_path
    assert_response :success
  end

  test "should get show" do
    get api_v1_blog_path(1)
    assert_response :success
  end

  test "should get update" do
    put api_v1_blog_path(1)
    assert_response :success
  end

  test "should get destroy" do
    delete api_v1_blog_path(1)
    assert_response :success
  end
end
