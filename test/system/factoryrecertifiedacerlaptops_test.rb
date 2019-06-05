require "application_system_test_case"

class FactoryrecertifiedacerlaptopsTest < ApplicationSystemTestCase
  setup do
    @factoryrecertifiedacerlaptop = factoryrecertifiedacerlaptops(:one)
  end

  test "visiting the index" do
    visit factoryrecertifiedacerlaptops_url
    assert_selector "h1", text: "Factoryrecertifiedacerlaptops"
  end

  test "creating a Factoryrecertifiedacerlaptop" do
    visit factoryrecertifiedacerlaptops_url
    click_on "New Factoryrecertifiedacerlaptop"

    fill_in "Category", with: @factoryrecertifiedacerlaptop.category_id
    fill_in "Colour", with: @factoryrecertifiedacerlaptop.colour
    fill_in "Description", with: @factoryrecertifiedacerlaptop.description
    fill_in "Image url", with: @factoryrecertifiedacerlaptop.image_url
    fill_in "Model", with: @factoryrecertifiedacerlaptop.model
    fill_in "Name", with: @factoryrecertifiedacerlaptop.name
    fill_in "Number", with: @factoryrecertifiedacerlaptop.number
    fill_in "Price", with: @factoryrecertifiedacerlaptop.price
    fill_in "Vendor", with: @factoryrecertifiedacerlaptop.vendor
    click_on "Create Factoryrecertifiedacerlaptop"

    assert_text "Factoryrecertifiedacerlaptop was successfully created"
    click_on "Back"
  end

  test "updating a Factoryrecertifiedacerlaptop" do
    visit factoryrecertifiedacerlaptops_url
    click_on "Edit", match: :first

    fill_in "Category", with: @factoryrecertifiedacerlaptop.category_id
    fill_in "Colour", with: @factoryrecertifiedacerlaptop.colour
    fill_in "Description", with: @factoryrecertifiedacerlaptop.description
    fill_in "Image url", with: @factoryrecertifiedacerlaptop.image_url
    fill_in "Model", with: @factoryrecertifiedacerlaptop.model
    fill_in "Name", with: @factoryrecertifiedacerlaptop.name
    fill_in "Number", with: @factoryrecertifiedacerlaptop.number
    fill_in "Price", with: @factoryrecertifiedacerlaptop.price
    fill_in "Vendor", with: @factoryrecertifiedacerlaptop.vendor
    click_on "Update Factoryrecertifiedacerlaptop"

    assert_text "Factoryrecertifiedacerlaptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Factoryrecertifiedacerlaptop" do
    visit factoryrecertifiedacerlaptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factoryrecertifiedacerlaptop was successfully destroyed"
  end
end
