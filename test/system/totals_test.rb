require "application_system_test_case"

class TotalsTest < ApplicationSystemTestCase
  setup do
    @total = totals(:one)
  end

  test "visiting the index" do
    visit totals_url
    assert_selector "h1", text: "Totals"
  end

  test "should create total" do
    visit totals_url
    click_on "New total"

    fill_in "Email", with: @total.email
    fill_in "Firstname", with: @total.firstName
    fill_in "Lastname", with: @total.lastName
    fill_in "Phone", with: @total.phone
    fill_in "Twitter", with: @total.twitter
    click_on "Create Total"

    assert_text "Total was successfully created"
    click_on "Back"
  end

  test "should update Total" do
    visit total_url(@total)
    click_on "Edit this total", match: :first

    fill_in "Email", with: @total.email
    fill_in "Firstname", with: @total.firstName
    fill_in "Lastname", with: @total.lastName
    fill_in "Phone", with: @total.phone
    fill_in "Twitter", with: @total.twitter
    click_on "Update Total"

    assert_text "Total was successfully updated"
    click_on "Back"
  end

  test "should destroy Total" do
    visit total_url(@total)
    click_on "Destroy this total", match: :first

    assert_text "Total was successfully destroyed"
  end
end
