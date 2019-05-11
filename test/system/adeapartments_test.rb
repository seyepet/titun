require "application_system_test_case"

class AdeapartmentsTest < ApplicationSystemTestCase
  setup do
    @adeapartment = adeapartments(:one)
  end

  test "visiting the index" do
    visit adeapartments_url
    assert_selector "h1", text: "Adeapartments"
  end

  test "creating a Adeapartment" do
    visit adeapartments_url
    click_on "New Adeapartment"

    fill_in "Address", with: @adeapartment.address
    fill_in "Category", with: @adeapartment.category_id
    fill_in "Description", with: @adeapartment.description
    fill_in "Image url", with: @adeapartment.image_url
    fill_in "Name", with: @adeapartment.name
    fill_in "Price", with: @adeapartment.price
    click_on "Create Adeapartment"

    assert_text "Adeapartment was successfully created"
    click_on "Back"
  end

  test "updating a Adeapartment" do
    visit adeapartments_url
    click_on "Edit", match: :first

    fill_in "Address", with: @adeapartment.address
    fill_in "Category", with: @adeapartment.category_id
    fill_in "Description", with: @adeapartment.description
    fill_in "Image url", with: @adeapartment.image_url
    fill_in "Name", with: @adeapartment.name
    fill_in "Price", with: @adeapartment.price
    click_on "Update Adeapartment"

    assert_text "Adeapartment was successfully updated"
    click_on "Back"
  end

  test "destroying a Adeapartment" do
    visit adeapartments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adeapartment was successfully destroyed"
  end
end
