require "application_system_test_case"

class NewhplaptopsTest < ApplicationSystemTestCase
  setup do
    @newhplaptop = newhplaptops(:one)
  end

  test "visiting the index" do
    visit newhplaptops_url
    assert_selector "h1", text: "Newhplaptops"
  end

  test "creating a Newhplaptop" do
    visit newhplaptops_url
    click_on "New Newhplaptop"

    fill_in "Category", with: @newhplaptop.category_id
    fill_in "Colour", with: @newhplaptop.colour
    fill_in "Description", with: @newhplaptop.description
    fill_in "Image url", with: @newhplaptop.image_url
    fill_in "Model", with: @newhplaptop.model
    fill_in "Name", with: @newhplaptop.name
    fill_in "Number", with: @newhplaptop.number
    fill_in "Price", with: @newhplaptop.price
    fill_in "Vendor", with: @newhplaptop.vendor
    click_on "Create Newhplaptop"

    assert_text "Newhplaptop was successfully created"
    click_on "Back"
  end

  test "updating a Newhplaptop" do
    visit newhplaptops_url
    click_on "Edit", match: :first

    fill_in "Category", with: @newhplaptop.category_id
    fill_in "Colour", with: @newhplaptop.colour
    fill_in "Description", with: @newhplaptop.description
    fill_in "Image url", with: @newhplaptop.image_url
    fill_in "Model", with: @newhplaptop.model
    fill_in "Name", with: @newhplaptop.name
    fill_in "Number", with: @newhplaptop.number
    fill_in "Price", with: @newhplaptop.price
    fill_in "Vendor", with: @newhplaptop.vendor
    click_on "Update Newhplaptop"

    assert_text "Newhplaptop was successfully updated"
    click_on "Back"
  end

  test "destroying a Newhplaptop" do
    visit newhplaptops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newhplaptop was successfully destroyed"
  end
end
