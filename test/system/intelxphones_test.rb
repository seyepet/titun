require "application_system_test_case"

class IntelxphonesTest < ApplicationSystemTestCase
  setup do
    @intelxphone = intelxphones(:one)
  end

  test "visiting the index" do
    visit intelxphones_url
    assert_selector "h1", text: "Intelxphones"
  end

  test "creating a Intelxphone" do
    visit intelxphones_url
    click_on "New Intelxphone"

    fill_in "Category", with: @intelxphone.category_id
    fill_in "Colour", with: @intelxphone.colour
    fill_in "Description", with: @intelxphone.description
    fill_in "Image url", with: @intelxphone.image_url
    fill_in "Model", with: @intelxphone.model
    fill_in "Name", with: @intelxphone.name
    fill_in "Number", with: @intelxphone.number
    fill_in "Price", with: @intelxphone.price
    fill_in "Vendor", with: @intelxphone.vendor
    click_on "Create Intelxphone"

    assert_text "Intelxphone was successfully created"
    click_on "Back"
  end

  test "updating a Intelxphone" do
    visit intelxphones_url
    click_on "Edit", match: :first

    fill_in "Category", with: @intelxphone.category_id
    fill_in "Colour", with: @intelxphone.colour
    fill_in "Description", with: @intelxphone.description
    fill_in "Image url", with: @intelxphone.image_url
    fill_in "Model", with: @intelxphone.model
    fill_in "Name", with: @intelxphone.name
    fill_in "Number", with: @intelxphone.number
    fill_in "Price", with: @intelxphone.price
    fill_in "Vendor", with: @intelxphone.vendor
    click_on "Update Intelxphone"

    assert_text "Intelxphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Intelxphone" do
    visit intelxphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intelxphone was successfully destroyed"
  end
end
