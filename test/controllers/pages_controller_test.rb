require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get adminnistration" do
    get pages_adminnistration_url
    assert_response :success
  end
end
