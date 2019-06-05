require "application_system_test_case"

class HprlaptopsTest < ApplicationSystemTestCase
  setup do
    @hprlaptop = hprlaptops(:one)
  end

  test "visiting the index" do
    visit hprlaptops_url
    assert_selector "h1", text: "Hprlaptops"
  end

  test "creating a Hprlaptop" do
    visit hprlaptops_url
    click_on "New Hprlaptop"

    fill_in "Category", with: @hprlaptop.category_id
    fill_in "Colour", with: @hprlaptop.colour
    fill_in "Description", with: @hprlaptop.description
    fill_in "Image url", with: @hprlaptop.image_url
    fill_in "Model", with: @hprlaptop.model
    fill_in "Name", with: @hprlaptop.name
    fill_in "Number", with: @hprlaptop.number
    fill_in "Price", with: @hprlaptop.price
    fill_in "Vendor", with: @hprlaptop.vendor
    click_on "Create Hprlaptop"

    assert_text "Hprlaptop was successfully created"
    click_on "Back"
  end

  test "updating a Hprlaptop" do
    visit hprlaptops_url
    click_on "Edit", match: :first

    fill_in "Category", with: @hprlaptop.category_id
    fill_in "Colour", with: @hprlaptop.colour
    fill_in "Description", with: @hprlaptop.description
    fill_in "Image url", with: @hprlaptop.image_url
    fill_in "Model", with: @hprlaptop.model
    fill_in "Name", with: @hprlaptop.name
    fill_in "Number", with: @hprlaptop.number
    fill_in "Price", with: @hprlaptop.price
    fill_in "Vendor", with: @hprlaptop.vendor
    click_on "Update Hprlaptop"

    assert_text "Hprlaptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Hprlaptop" do
    visit hprlaptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hprlaptop was successfully destroyed"
  end
end
