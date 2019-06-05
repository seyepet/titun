require "application_system_test_case"

class RetrofitsTest < ApplicationSystemTestCase
  setup do
    @retrofit = retrofits(:one)
  end

  test "visiting the index" do
    visit retrofits_url
    assert_selector "h1", text: "Retrofits"
  end

  test "creating a Retrofit" do
    visit retrofits_url
    click_on "New Retrofit"

    fill_in "Category", with: @retrofit.category_id
    fill_in "Colour", with: @retrofit.colour
    fill_in "Description", with: @retrofit.description
    fill_in "Image url", with: @retrofit.image_url
    fill_in "Model", with: @retrofit.model
    fill_in "Name", with: @retrofit.name
    fill_in "Number", with: @retrofit.number
    fill_in "Price", with: @retrofit.price
    fill_in "Vendor", with: @retrofit.vendor
    click_on "Create Retrofit"

    assert_text "Retrofit was successfully created"
    click_on "Back"
  end

  test "updating a Retrofit" do
    visit retrofits_url
    click_on "Edit", match: :first

    fill_in "Category", with: @retrofit.category_id
    fill_in "Colour", with: @retrofit.colour
    fill_in "Description", with: @retrofit.description
    fill_in "Image url", with: @retrofit.image_url
    fill_in "Model", with: @retrofit.model
    fill_in "Name", with: @retrofit.name
    fill_in "Number", with: @retrofit.number
    fill_in "Price", with: @retrofit.price
    fill_in "Vendor", with: @retrofit.vendor
    click_on "Update Retrofit"

    assert_text "Retrofit was successfully updated"
    click_on "Back"
  end

  test "destroying a Retrofit" do
    visit retrofits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Retrofit was successfully destroyed"
  end
end
