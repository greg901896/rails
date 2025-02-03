require "test_helper"

class Home1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index1" do
    get home1_index1_url
    assert_response :success
  end
end
