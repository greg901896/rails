require "test_helper"

class NewgregsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newgreg = newgregs(:one)
  end

  test "should get index" do
    get newgregs_url
    assert_response :success
  end

  test "should get new" do
    get new_newgreg_url
    assert_response :success
  end

  test "should create newgreg" do
    assert_difference("Newgreg.count") do
      post newgregs_url, params: { newgreg: { emails: @newgreg.emails, first_name: @newgreg.first_name, last_name: @newgreg.last_name, phone: @newgreg.phone, twitter: @newgreg.twitter } }
    end

    assert_redirected_to newgreg_url(Newgreg.last)
  end

  test "should show newgreg" do
    get newgreg_url(@newgreg)
    assert_response :success
  end

  test "should get edit" do
    get edit_newgreg_url(@newgreg)
    assert_response :success
  end

  test "should update newgreg" do
    patch newgreg_url(@newgreg), params: { newgreg: { emails: @newgreg.emails, first_name: @newgreg.first_name, last_name: @newgreg.last_name, phone: @newgreg.phone, twitter: @newgreg.twitter } }
    assert_redirected_to newgreg_url(@newgreg)
  end

  test "should destroy newgreg" do
    assert_difference("Newgreg.count", -1) do
      delete newgreg_url(@newgreg)
    end

    assert_redirected_to newgregs_url
  end
end
