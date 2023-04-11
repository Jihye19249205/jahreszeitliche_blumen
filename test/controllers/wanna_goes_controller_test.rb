require "test_helper"

class WannaGoesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get wanna_goes_create_url
    assert_response :success
  end

  test "should get destroy" do
    get wanna_goes_destroy_url
    assert_response :success
  end
end
