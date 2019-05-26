require "application_system_test_case"

class ThemastercaresTest < ApplicationSystemTestCase
  setup do
    @themastercare = themastercares(:one)
  end

  test "visiting the index" do
    visit themastercares_url
    assert_selector "h1", text: "Themastercares"
  end

  test "creating a Themastercare" do
    visit themastercares_url
    click_on "New Themastercare"

    fill_in "Category", with: @themastercare.category_id
    fill_in "Courses", with: @themastercare.courses
    fill_in "Description", with: @themastercare.description
    fill_in "Image url", with: @themastercare.image_url
    fill_in "Name", with: @themastercare.name
    fill_in "Price", with: @themastercare.price
    click_on "Create Themastercare"

    assert_text "Themastercare was successfully created"
    click_on "Back"
  end

  test "updating a Themastercare" do
    visit themastercares_url
    click_on "Edit", match: :first

    fill_in "Category", with: @themastercare.category_id
    fill_in "Courses", with: @themastercare.courses
    fill_in "Description", with: @themastercare.description
    fill_in "Image url", with: @themastercare.image_url
    fill_in "Name", with: @themastercare.name
    fill_in "Price", with: @themastercare.price
    click_on "Update Themastercare"

    assert_text "Themastercare was successfully updated"
    click_on "Back"
  end

  test "destroying a Themastercare" do
    visit themastercares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Themastercare was successfully destroyed"
  end
end
