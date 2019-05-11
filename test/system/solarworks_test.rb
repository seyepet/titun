require "application_system_test_case"

class SolarworksTest < ApplicationSystemTestCase
  setup do
    @solarwork = solarworks(:one)
  end

  test "visiting the index" do
    visit solarworks_url
    assert_selector "h1", text: "Solarworks"
  end

  test "creating a Solarwork" do
    visit solarworks_url
    click_on "New Solarwork"

    fill_in "Category", with: @solarwork.category_id
    fill_in "Code", with: @solarwork.code
    fill_in "Description", with: @solarwork.description
    fill_in "Image url", with: @solarwork.image_url
    fill_in "Name", with: @solarwork.name
    fill_in "Price", with: @solarwork.price
    click_on "Create Solarwork"

    assert_text "Solarwork was successfully created"
    click_on "Back"
  end

  test "updating a Solarwork" do
    visit solarworks_url
    click_on "Edit", match: :first

    fill_in "Category", with: @solarwork.category_id
    fill_in "Code", with: @solarwork.code
    fill_in "Description", with: @solarwork.description
    fill_in "Image url", with: @solarwork.image_url
    fill_in "Name", with: @solarwork.name
    fill_in "Price", with: @solarwork.price
    click_on "Update Solarwork"

    assert_text "Solarwork was successfully updated"
    click_on "Back"
  end

  test "destroying a Solarwork" do
    visit solarworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solarwork was successfully destroyed"
  end
end
