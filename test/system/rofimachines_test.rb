require "application_system_test_case"

class RofimachinesTest < ApplicationSystemTestCase
  setup do
    @rofimachine = rofimachines(:one)
  end

  test "visiting the index" do
    visit rofimachines_url
    assert_selector "h1", text: "Rofimachines"
  end

  test "creating a Rofimachine" do
    visit rofimachines_url
    click_on "New Rofimachine"

    fill_in "Category", with: @rofimachine.category_id
    fill_in "Code", with: @rofimachine.code
    fill_in "Description", with: @rofimachine.description
    fill_in "Image url", with: @rofimachine.image_url
    fill_in "Name", with: @rofimachine.name
    fill_in "Price", with: @rofimachine.price
    click_on "Create Rofimachine"

    assert_text "Rofimachine was successfully created"
    click_on "Back"
  end

  test "updating a Rofimachine" do
    visit rofimachines_url
    click_on "Edit", match: :first

    fill_in "Category", with: @rofimachine.category_id
    fill_in "Code", with: @rofimachine.code
    fill_in "Description", with: @rofimachine.description
    fill_in "Image url", with: @rofimachine.image_url
    fill_in "Name", with: @rofimachine.name
    fill_in "Price", with: @rofimachine.price
    click_on "Update Rofimachine"

    assert_text "Rofimachine was successfully updated"
    click_on "Back"
  end

  test "destroying a Rofimachine" do
    visit rofimachines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rofimachine was successfully destroyed"
  end
end
