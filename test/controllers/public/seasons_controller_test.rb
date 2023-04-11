require "test_helper"

class Public::SeasonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_seasons_index_url
    assert_response :success
  end
end
