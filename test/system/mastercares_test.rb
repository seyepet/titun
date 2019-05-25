require "application_system_test_case"

class MastercaresTest < ApplicationSystemTestCase
  setup do
    @mastercare = mastercares(:one)
  end

  test "visiting the index" do
    visit mastercares_url
    assert_selector "h1", text: "Mastercares"
  end

  test "creating a Mastercare" do
    visit mastercares_url
    click_on "New Mastercare"

    fill_in "Category", with: @mastercare.category_id
    fill_in "Courses", with: @mastercare.courses
    fill_in "Description", with: @mastercare.description
    fill_in "Image url", with: @mastercare.image_url
    fill_in "Name", with: @mastercare.name
    fill_in "Price", with: @mastercare.price
    click_on "Create Mastercare"

    assert_text "Mastercare was successfully created"
    click_on "Back"
  end

  test "updating a Mastercare" do
    visit mastercares_url
    click_on "Edit", match: :first

    fill_in "Category", with: @mastercare.category_id
    fill_in "Courses", with: @mastercare.courses
    fill_in "Description", with: @mastercare.description
    fill_in "Image url", with: @mastercare.image_url
    fill_in "Name", with: @mastercare.name
    fill_in "Price", with: @mastercare.price
    click_on "Update Mastercare"

    assert_text "Mastercare was successfully updated"
    click_on "Back"
  end

  test "destroying a Mastercare" do
    visit mastercares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mastercare was successfully destroyed"
  end
end
