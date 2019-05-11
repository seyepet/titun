require "application_system_test_case"

class TonycyclesTest < ApplicationSystemTestCase
  setup do
    @tonycycle = tonycycles(:one)
  end

  test "visiting the index" do
    visit tonycycles_url
    assert_selector "h1", text: "Tonycycles"
  end

  test "creating a Tonycycle" do
    visit tonycycles_url
    click_on "New Tonycycle"

    fill_in "Brand", with: @tonycycle.brand
    fill_in "Category", with: @tonycycle.category_id
    fill_in "Gear type", with: @tonycycle.gear_type
    fill_in "Image url", with: @tonycycle.image_url
    fill_in "Model", with: @tonycycle.model
    fill_in "Number of wheels", with: @tonycycle.number_of_wheels
    fill_in "Price", with: @tonycycle.price
    check "Purchased" if @tonycycle.purchased
    fill_in "Year", with: @tonycycle.year
    click_on "Create Tonycycle"

    assert_text "Tonycycle was successfully created"
    click_on "Back"
  end

  test "updating a Tonycycle" do
    visit tonycycles_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @tonycycle.brand
    fill_in "Category", with: @tonycycle.category_id
    fill_in "Gear type", with: @tonycycle.gear_type
    fill_in "Image url", with: @tonycycle.image_url
    fill_in "Model", with: @tonycycle.model
    fill_in "Number of wheels", with: @tonycycle.number_of_wheels
    fill_in "Price", with: @tonycycle.price
    check "Purchased" if @tonycycle.purchased
    fill_in "Year", with: @tonycycle.year
    click_on "Update Tonycycle"

    assert_text "Tonycycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Tonycycle" do
    visit tonycycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tonycycle was successfully destroyed"
  end
end
