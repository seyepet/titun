require "application_system_test_case"

class LocalPurchasingOrdersTest < ApplicationSystemTestCase
  setup do
    @local_purchasing_order = local_purchasing_orders(:one)
  end

  test "visiting the index" do
    visit local_purchasing_orders_url
    assert_selector "h1", text: "Local Purchasing Orders"
  end

  test "creating a Local purchasing order" do
    visit local_purchasing_orders_url
    click_on "New Local Purchasing Order"

    fill_in "Amount", with: @local_purchasing_order.amount
    fill_in "Contragent", with: @local_purchasing_order.contragent
    fill_in "Currency", with: @local_purchasing_order.currency
    fill_in "Date", with: @local_purchasing_order.date
    fill_in "Name", with: @local_purchasing_order.name
    click_on "Create Local purchasing order"

    assert_text "Local purchasing order was successfully created"
    click_on "Back"
  end

  test "updating a Local purchasing order" do
    visit local_purchasing_orders_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @local_purchasing_order.amount
    fill_in "Contragent", with: @local_purchasing_order.contragent
    fill_in "Currency", with: @local_purchasing_order.currency
    fill_in "Date", with: @local_purchasing_order.date
    fill_in "Name", with: @local_purchasing_order.name
    click_on "Update Local purchasing order"

    assert_text "Local purchasing order was successfully updated"
    click_on "Back"
  end

  test "destroying a Local purchasing order" do
    visit local_purchasing_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Local purchasing order was successfully destroyed"
  end
end
