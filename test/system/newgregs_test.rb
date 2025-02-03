require "application_system_test_case"

class NewgregsTest < ApplicationSystemTestCase
  setup do
    @newgreg = newgregs(:one)
  end

  test "visiting the index" do
    visit newgregs_url
    assert_selector "h1", text: "Newgregs"
  end

  test "should create newgreg" do
    visit newgregs_url
    click_on "New newgreg"

    fill_in "Emails", with: @newgreg.emails
    fill_in "First name", with: @newgreg.first_name
    fill_in "Last name", with: @newgreg.last_name
    fill_in "Phone", with: @newgreg.phone
    fill_in "Twitter", with: @newgreg.twitter
    click_on "Create Newgreg"

    assert_text "Newgreg was successfully created"
    click_on "Back"
  end

  test "should update Newgreg" do
    visit newgreg_url(@newgreg)
    click_on "Edit this newgreg", match: :first

    fill_in "Emails", with: @newgreg.emails
    fill_in "First name", with: @newgreg.first_name
    fill_in "Last name", with: @newgreg.last_name
    fill_in "Phone", with: @newgreg.phone
    fill_in "Twitter", with: @newgreg.twitter
    click_on "Update Newgreg"

    assert_text "Newgreg was successfully updated"
    click_on "Back"
  end

  test "should destroy Newgreg" do
    visit newgreg_url(@newgreg)
    click_on "Destroy this newgreg", match: :first

    assert_text "Newgreg was successfully destroyed"
  end
end
