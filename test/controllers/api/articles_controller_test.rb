require "test_helper"

class Api::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_articles_index_url, as: :json
    assert_response :success
  end
  test "should get show" do
    get api_articles_show_url(id: 1), as: :json
    assert_response :success
  end
  test "should post create" do
    post api_articles_create_url, as: :json
    assert_response :success
  end
  test "should put update" do
    put api_articles_update_url(id: 1), as: :json
    assert_response :success
  end
  test "should delete destroy" do
    delete api_articles_destroy_url(id: 1), as: :json
    assert_response :success
  end
end
