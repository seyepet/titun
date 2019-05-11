require 'test_helper'

class MarketplacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketplace = marketplaces(:one)
  end

  test "should get index" do
    get marketplaces_url
    assert_response :success
  end

  test "should get new" do
    get new_marketplace_url
    assert_response :success
  end

  test "should create marketplace" do
    assert_difference('Marketplace.count') do
      post marketplaces_url, params: { marketplace: { category_id: @marketplace.category_id, description: @marketplace.description, image_url: @marketplace.image_url, name: @marketplace.name, number: @marketplace.number, price: @marketplace.price, vendor: @marketplace.vendor } }
    end

    assert_redirected_to marketplace_url(Marketplace.last)
  end

  test "should show marketplace" do
    get marketplace_url(@marketplace)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketplace_url(@marketplace)
    assert_response :success
  end

  test "should update marketplace" do
    patch marketplace_url(@marketplace), params: { marketplace: { category_id: @marketplace.category_id, description: @marketplace.description, image_url: @marketplace.image_url, name: @marketplace.name, number: @marketplace.number, price: @marketplace.price, vendor: @marketplace.vendor } }
    assert_redirected_to marketplace_url(@marketplace)
  end

  test "should destroy marketplace" do
    assert_difference('Marketplace.count', -1) do
      delete marketplace_url(@marketplace)
    end

    assert_redirected_to marketplaces_url
  end
end
