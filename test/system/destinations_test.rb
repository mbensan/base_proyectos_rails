require "application_system_test_case"

class DestinationsTest < ApplicationSystemTestCase
  setup do
    @destination = destinations(:one)
  end

  test "visiting the index" do
    visit destinations_url
    assert_selector "h1", text: "Destinations"
  end

  test "should create destination" do
    visit destinations_url
    click_on "New destination"

    fill_in "City", with: @destination.city
    fill_in "Country", with: @destination.country
    fill_in "Description", with: @destination.description
    fill_in "Name", with: @destination.name
    click_on "Create Destination"

    assert_text "Destination was successfully created"
    click_on "Back"
  end

  test "should update Destination" do
    visit destination_url(@destination)
    click_on "Edit this destination", match: :first

    fill_in "City", with: @destination.city
    fill_in "Country", with: @destination.country
    fill_in "Description", with: @destination.description
    fill_in "Name", with: @destination.name
    click_on "Update Destination"

    assert_text "Destination was successfully updated"
    click_on "Back"
  end

  test "should destroy Destination" do
    visit destination_url(@destination)
    click_on "Destroy this destination", match: :first

    assert_text "Destination was successfully destroyed"
  end
end
