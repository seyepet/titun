require "application_system_test_case"

class FactoryrecertifieddelllaptopsTest < ApplicationSystemTestCase
  setup do
    @factoryrecertifieddelllaptop = factoryrecertifieddelllaptops(:one)
  end

  test "visiting the index" do
    visit factoryrecertifieddelllaptops_url
    assert_selector "h1", text: "Factoryrecertifieddelllaptops"
  end

  test "creating a Factoryrecertifieddelllaptop" do
    visit factoryrecertifieddelllaptops_url
    click_on "New Factoryrecertifieddelllaptop"

    fill_in "Category", with: @factoryrecertifieddelllaptop.category_id
    fill_in "Colour", with: @factoryrecertifieddelllaptop.colour
    fill_in "Description", with: @factoryrecertifieddelllaptop.description
    fill_in "Image url", with: @factoryrecertifieddelllaptop.image_url
    fill_in "Model", with: @factoryrecertifieddelllaptop.model
    fill_in "Name", with: @factoryrecertifieddelllaptop.name
    fill_in "Number", with: @factoryrecertifieddelllaptop.number
    fill_in "Price", with: @factoryrecertifieddelllaptop.price
    fill_in "Vendor", with: @factoryrecertifieddelllaptop.vendor
    click_on "Create Factoryrecertifieddelllaptop"

    assert_text "Factoryrecertifieddelllaptop was successfully created"
    click_on "Back"
  end

  test "updating a Factoryrecertifieddelllaptop" do
    visit factoryrecertifieddelllaptops_url
    click_on "Edit", match: :first

    fill_in "Category", with: @factoryrecertifieddelllaptop.category_id
    fill_in "Colour", with: @factoryrecertifieddelllaptop.colour
    fill_in "Description", with: @factoryrecertifieddelllaptop.description
    fill_in "Image url", with: @factoryrecertifieddelllaptop.image_url
    fill_in "Model", with: @factoryrecertifieddelllaptop.model
    fill_in "Name", with: @factoryrecertifieddelllaptop.name
    fill_in "Number", with: @factoryrecertifieddelllaptop.number
    fill_in "Price", with: @factoryrecertifieddelllaptop.price
    fill_in "Vendor", with: @factoryrecertifieddelllaptop.vendor
    click_on "Update Factoryrecertifieddelllaptop"

    assert_text "Factoryrecertifieddelllaptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Factoryrecertifieddelllaptop" do
    visit factoryrecertifieddelllaptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factoryrecertifieddelllaptop was successfully destroyed"
  end
end
