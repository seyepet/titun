require "application_system_test_case"

class DslrcamerasTest < ApplicationSystemTestCase
  setup do
    @dslrcamera = dslrcameras(:one)
  end

  test "visiting the index" do
    visit dslrcameras_url
    assert_selector "h1", text: "Dslrcameras"
  end

  test "creating a Dslrcamera" do
    visit dslrcameras_url
    click_on "New Dslrcamera"

    fill_in "Category", with: @dslrcamera.category_id
    fill_in "Code", with: @dslrcamera.code
    fill_in "Colour", with: @dslrcamera.colour
    fill_in "Description", with: @dslrcamera.description
    fill_in "Image url", with: @dslrcamera.image_url
    fill_in "Model", with: @dslrcamera.model
    fill_in "Name", with: @dslrcamera.name
    fill_in "Number", with: @dslrcamera.number
    fill_in "Price", with: @dslrcamera.price
    fill_in "Vendor", with: @dslrcamera.vendor
    click_on "Create Dslrcamera"

    assert_text "Dslrcamera was successfully created"
    click_on "Back"
  end

  test "updating a Dslrcamera" do
    visit dslrcameras_url
    click_on "Edit", match: :first

    fill_in "Category", with: @dslrcamera.category_id
    fill_in "Code", with: @dslrcamera.code
    fill_in "Colour", with: @dslrcamera.colour
    fill_in "Description", with: @dslrcamera.description
    fill_in "Image url", with: @dslrcamera.image_url
    fill_in "Model", with: @dslrcamera.model
    fill_in "Name", with: @dslrcamera.name
    fill_in "Number", with: @dslrcamera.number
    fill_in "Price", with: @dslrcamera.price
    fill_in "Vendor", with: @dslrcamera.vendor
    click_on "Update Dslrcamera"

    assert_text "Dslrcamera was successfully updated"
    click_on "Back"
  end

  test "destroying a Dslrcamera" do
    visit dslrcameras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dslrcamera was successfully destroyed"
  end
end
