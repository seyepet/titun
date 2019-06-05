require "application_system_test_case"

class InfinixphonesTest < ApplicationSystemTestCase
  setup do
    @infinixphone = infinixphones(:one)
  end

  test "visiting the index" do
    visit infinixphones_url
    assert_selector "h1", text: "Infinixphones"
  end

  test "creating a Infinixphone" do
    visit infinixphones_url
    click_on "New Infinixphone"

    fill_in "Category", with: @infinixphone.category_id
    fill_in "Colour", with: @infinixphone.colour
    fill_in "Description", with: @infinixphone.description
    fill_in "Image url", with: @infinixphone.image_url
    fill_in "Model", with: @infinixphone.model
    fill_in "Name", with: @infinixphone.name
    fill_in "Number", with: @infinixphone.number
    fill_in "Price", with: @infinixphone.price
    fill_in "Vendor", with: @infinixphone.vendor
    click_on "Create Infinixphone"

    assert_text "Infinixphone was successfully created"
    click_on "Back"
  end

  test "updating a Infinixphone" do
    visit infinixphones_url
    click_on "Edit", match: :first

    fill_in "Category", with: @infinixphone.category_id
    fill_in "Colour", with: @infinixphone.colour
    fill_in "Description", with: @infinixphone.description
    fill_in "Image url", with: @infinixphone.image_url
    fill_in "Model", with: @infinixphone.model
    fill_in "Name", with: @infinixphone.name
    fill_in "Number", with: @infinixphone.number
    fill_in "Price", with: @infinixphone.price
    fill_in "Vendor", with: @infinixphone.vendor
    click_on "Update Infinixphone"

    assert_text "Infinixphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Infinixphone" do
    visit infinixphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Infinixphone was successfully destroyed"
  end
end
