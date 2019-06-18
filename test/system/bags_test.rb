require "application_system_test_case"

class BagsTest < ApplicationSystemTestCase
  setup do
    @bag = bags(:one)
  end

  test "visiting the index" do
    visit bags_url
    assert_selector "h1", text: "Bags"
  end

  test "creating a Bag" do
    visit bags_url
    click_on "New Bag"

    fill_in "About", with: @bag.about
    fill_in "Category", with: @bag.category_id
    fill_in "Colour", with: @bag.colour
    fill_in "Description", with: @bag.description
    fill_in "Image url", with: @bag.image_url
    fill_in "Material", with: @bag.material
    fill_in "Model", with: @bag.model
    fill_in "Name", with: @bag.name
    fill_in "Number", with: @bag.number
    fill_in "Price", with: @bag.price
    fill_in "Size", with: @bag.size
    fill_in "Vendor", with: @bag.vendor
    click_on "Create Bag"

    assert_text "Bag was successfully created"
    click_on "Back"
  end

  test "updating a Bag" do
    visit bags_url
    click_on "Edit", match: :first

    fill_in "About", with: @bag.about
    fill_in "Category", with: @bag.category_id
    fill_in "Colour", with: @bag.colour
    fill_in "Description", with: @bag.description
    fill_in "Image url", with: @bag.image_url
    fill_in "Material", with: @bag.material
    fill_in "Model", with: @bag.model
    fill_in "Name", with: @bag.name
    fill_in "Number", with: @bag.number
    fill_in "Price", with: @bag.price
    fill_in "Size", with: @bag.size
    fill_in "Vendor", with: @bag.vendor
    click_on "Update Bag"

    assert_text "Bag was successfully updated"
    click_on "Back"
  end

  test "destroying a Bag" do
    visit bags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bag was successfully destroyed"
  end
end
