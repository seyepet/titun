require "application_system_test_case"

class TechnophonesTest < ApplicationSystemTestCase
  setup do
    @technophone = technophones(:one)
  end

  test "visiting the index" do
    visit technophones_url
    assert_selector "h1", text: "Technophones"
  end

  test "creating a Technophone" do
    visit technophones_url
    click_on "New Technophone"

    fill_in "Category", with: @technophone.category_id
    fill_in "Colour", with: @technophone.colour
    fill_in "Description", with: @technophone.description
    fill_in "Image url", with: @technophone.image_url
    fill_in "Model", with: @technophone.model
    fill_in "Name", with: @technophone.name
    fill_in "Number", with: @technophone.number
    fill_in "Price", with: @technophone.price
    fill_in "Vendor", with: @technophone.vendor
    click_on "Create Technophone"

    assert_text "Technophone was successfully created"
    click_on "Back"
  end

  test "updating a Technophone" do
    visit technophones_url
    click_on "Edit", match: :first

    fill_in "Category", with: @technophone.category_id
    fill_in "Colour", with: @technophone.colour
    fill_in "Description", with: @technophone.description
    fill_in "Image url", with: @technophone.image_url
    fill_in "Model", with: @technophone.model
    fill_in "Name", with: @technophone.name
    fill_in "Number", with: @technophone.number
    fill_in "Price", with: @technophone.price
    fill_in "Vendor", with: @technophone.vendor
    click_on "Update Technophone"

    assert_text "Technophone was successfully updated"
    click_on "Back"
  end

  test "destroying a Technophone" do
    visit technophones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Technophone was successfully destroyed"
  end
end
