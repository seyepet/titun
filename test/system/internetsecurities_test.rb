require "application_system_test_case"

class InternetsecuritiesTest < ApplicationSystemTestCase
  setup do
    @internetsecurity = internetsecurities(:one)
  end

  test "visiting the index" do
    visit internetsecurities_url
    assert_selector "h1", text: "Internetsecurities"
  end

  test "creating a Internetsecurity" do
    visit internetsecurities_url
    click_on "New Internetsecurity"

    fill_in "About", with: @internetsecurity.about
    fill_in "Capacity", with: @internetsecurity.capacity
    fill_in "Category", with: @internetsecurity.category_id
    fill_in "Description", with: @internetsecurity.description
    fill_in "Image url", with: @internetsecurity.image_url
    fill_in "Name", with: @internetsecurity.name
    fill_in "Noofdevice", with: @internetsecurity.noofdevice
    fill_in "Number", with: @internetsecurity.number
    fill_in "Price", with: @internetsecurity.price
    fill_in "Type", with: @internetsecurity.type
    fill_in "User", with: @internetsecurity.user
    fill_in "Vendor", with: @internetsecurity.vendor
    click_on "Create Internetsecurity"

    assert_text "Internetsecurity was successfully created"
    click_on "Back"
  end

  test "updating a Internetsecurity" do
    visit internetsecurities_url
    click_on "Edit", match: :first

    fill_in "About", with: @internetsecurity.about
    fill_in "Capacity", with: @internetsecurity.capacity
    fill_in "Category", with: @internetsecurity.category_id
    fill_in "Description", with: @internetsecurity.description
    fill_in "Image url", with: @internetsecurity.image_url
    fill_in "Name", with: @internetsecurity.name
    fill_in "Noofdevice", with: @internetsecurity.noofdevice
    fill_in "Number", with: @internetsecurity.number
    fill_in "Price", with: @internetsecurity.price
    fill_in "Type", with: @internetsecurity.type
    fill_in "User", with: @internetsecurity.user
    fill_in "Vendor", with: @internetsecurity.vendor
    click_on "Update Internetsecurity"

    assert_text "Internetsecurity was successfully updated"
    click_on "Back"
  end

  test "destroying a Internetsecurity" do
    visit internetsecurities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Internetsecurity was successfully destroyed"
  end
end
