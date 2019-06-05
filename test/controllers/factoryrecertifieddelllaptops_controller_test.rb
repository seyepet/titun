require 'test_helper'

class FactoryrecertifieddelllaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factoryrecertifieddelllaptop = factoryrecertifieddelllaptops(:one)
  end

  test "should get index" do
    get factoryrecertifieddelllaptops_url
    assert_response :success
  end

  test "should get new" do
    get new_factoryrecertifieddelllaptop_url
    assert_response :success
  end

  test "should create factoryrecertifieddelllaptop" do
    assert_difference('Factoryrecertifieddelllaptop.count') do
      post factoryrecertifieddelllaptops_url, params: { factoryrecertifieddelllaptop: { category_id: @factoryrecertifieddelllaptop.category_id, colour: @factoryrecertifieddelllaptop.colour, description: @factoryrecertifieddelllaptop.description, image_url: @factoryrecertifieddelllaptop.image_url, model: @factoryrecertifieddelllaptop.model, name: @factoryrecertifieddelllaptop.name, number: @factoryrecertifieddelllaptop.number, price: @factoryrecertifieddelllaptop.price, vendor: @factoryrecertifieddelllaptop.vendor } }
    end

    assert_redirected_to factoryrecertifieddelllaptop_url(Factoryrecertifieddelllaptop.last)
  end

  test "should show factoryrecertifieddelllaptop" do
    get factoryrecertifieddelllaptop_url(@factoryrecertifieddelllaptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_factoryrecertifieddelllaptop_url(@factoryrecertifieddelllaptop)
    assert_response :success
  end

  test "should update factoryrecertifieddelllaptop" do
    patch factoryrecertifieddelllaptop_url(@factoryrecertifieddelllaptop), params: { factoryrecertifieddelllaptop: { category_id: @factoryrecertifieddelllaptop.category_id, colour: @factoryrecertifieddelllaptop.colour, description: @factoryrecertifieddelllaptop.description, image_url: @factoryrecertifieddelllaptop.image_url, model: @factoryrecertifieddelllaptop.model, name: @factoryrecertifieddelllaptop.name, number: @factoryrecertifieddelllaptop.number, price: @factoryrecertifieddelllaptop.price, vendor: @factoryrecertifieddelllaptop.vendor } }
    assert_redirected_to factoryrecertifieddelllaptop_url(@factoryrecertifieddelllaptop)
  end

  test "should destroy factoryrecertifieddelllaptop" do
    assert_difference('Factoryrecertifieddelllaptop.count', -1) do
      delete factoryrecertifieddelllaptop_url(@factoryrecertifieddelllaptop)
    end

    assert_redirected_to factoryrecertifieddelllaptops_url
  end
end
