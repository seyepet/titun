require "application_system_test_case"

class HprrlaptopsTest < ApplicationSystemTestCase
  setup do
    @hprrlaptop = hprrlaptops(:one)
  end

  test "visiting the index" do
    visit hprrlaptops_url
    assert_selector "h1", text: "Hprrlaptops"
  end

  test "creating a Hprrlaptop" do
    visit hprrlaptops_url
    click_on "New Hprrlaptop"

    fill_in "Category", with: @hprrlaptop.category_id
    fill_in "Colour", with: @hprrlaptop.colour
    fill_in "Description", with: @hprrlaptop.description
    fill_in "Image url", with: @hprrlaptop.image_url
    fill_in "Model", with: @hprrlaptop.model
    fill_in "Name", with: @hprrlaptop.name
    fill_in "Number", with: @hprrlaptop.number
    fill_in "Price", with: @hprrlaptop.price
    fill_in "Vendor", with: @hprrlaptop.vendor
    click_on "Create Hprrlaptop"

    assert_text "Hprrlaptop was successfully created"
    click_on "Back"
  end

  test "updating a Hprrlaptop" do
    visit hprrlaptops_url
    click_on "Edit", match: :first

    fill_in "Category", with: @hprrlaptop.category_id
    fill_in "Colour", with: @hprrlaptop.colour
    fill_in "Description", with: @hprrlaptop.description
    fill_in "Image url", with: @hprrlaptop.image_url
    fill_in "Model", with: @hprrlaptop.model
    fill_in "Name", with: @hprrlaptop.name
    fill_in "Number", with: @hprrlaptop.number
    fill_in "Price", with: @hprrlaptop.price
    fill_in "Vendor", with: @hprrlaptop.vendor
    click_on "Update Hprrlaptop"

    assert_text "Hprrlaptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Hprrlaptop" do
    visit hprrlaptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hprrlaptop was successfully destroyed"
  end
end
