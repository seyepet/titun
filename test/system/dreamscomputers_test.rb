require "application_system_test_case"

class DreamscomputersTest < ApplicationSystemTestCase
  setup do
    @dreamscomputer = dreamscomputers(:one)
  end

  test "visiting the index" do
    visit dreamscomputers_url
    assert_selector "h1", text: "Dreamscomputers"
  end

  test "creating a Dreamscomputer" do
    visit dreamscomputers_url
    click_on "New Dreamscomputer"

    fill_in "Category", with: @dreamscomputer.category_id
    fill_in "Description", with: @dreamscomputer.description
    fill_in "Image url", with: @dreamscomputer.image_url
    fill_in "Model", with: @dreamscomputer.model
    fill_in "Name", with: @dreamscomputer.name
    fill_in "Number", with: @dreamscomputer.number
    fill_in "Price", with: @dreamscomputer.price
    fill_in "Vendor", with: @dreamscomputer.vendor
    click_on "Create Dreamscomputer"

    assert_text "Dreamscomputer was successfully created"
    click_on "Back"
  end

  test "updating a Dreamscomputer" do
    visit dreamscomputers_url
    click_on "Edit", match: :first

    fill_in "Category", with: @dreamscomputer.category_id
    fill_in "Description", with: @dreamscomputer.description
    fill_in "Image url", with: @dreamscomputer.image_url
    fill_in "Model", with: @dreamscomputer.model
    fill_in "Name", with: @dreamscomputer.name
    fill_in "Number", with: @dreamscomputer.number
    fill_in "Price", with: @dreamscomputer.price
    fill_in "Vendor", with: @dreamscomputer.vendor
    click_on "Update Dreamscomputer"

    assert_text "Dreamscomputer was successfully updated"
    click_on "Back"
  end

  test "destroying a Dreamscomputer" do
    visit dreamscomputers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dreamscomputer was successfully destroyed"
  end
end
