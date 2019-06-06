require "application_system_test_case"

class ItelphonesTest < ApplicationSystemTestCase
  setup do
    @itelphone = itelphones(:one)
  end

  test "visiting the index" do
    visit itelphones_url
    assert_selector "h1", text: "Itelphones"
  end

  test "creating a Itelphone" do
    visit itelphones_url
    click_on "New Itelphone"

    fill_in "Category", with: @itelphone.category_id
    fill_in "Colour", with: @itelphone.colour
    fill_in "Description", with: @itelphone.description
    fill_in "Image url", with: @itelphone.image_url
    fill_in "Model", with: @itelphone.model
    fill_in "Name", with: @itelphone.name
    fill_in "Number", with: @itelphone.number
    fill_in "Price", with: @itelphone.price
    fill_in "Vendor", with: @itelphone.vendor
    click_on "Create Itelphone"

    assert_text "Itelphone was successfully created"
    click_on "Back"
  end

  test "updating a Itelphone" do
    visit itelphones_url
    click_on "Edit", match: :first

    fill_in "Category", with: @itelphone.category_id
    fill_in "Colour", with: @itelphone.colour
    fill_in "Description", with: @itelphone.description
    fill_in "Image url", with: @itelphone.image_url
    fill_in "Model", with: @itelphone.model
    fill_in "Name", with: @itelphone.name
    fill_in "Number", with: @itelphone.number
    fill_in "Price", with: @itelphone.price
    fill_in "Vendor", with: @itelphone.vendor
    click_on "Update Itelphone"

    assert_text "Itelphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Itelphone" do
    visit itelphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itelphone was successfully destroyed"
  end
end
