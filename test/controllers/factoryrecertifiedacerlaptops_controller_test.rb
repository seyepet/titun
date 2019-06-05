require 'test_helper'

class FactoryrecertifiedacerlaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factoryrecertifiedacerlaptop = factoryrecertifiedacerlaptops(:one)
  end

  test "should get index" do
    get factoryrecertifiedacerlaptops_url
    assert_response :success
  end

  test "should get new" do
    get new_factoryrecertifiedacerlaptop_url
    assert_response :success
  end

  test "should create factoryrecertifiedacerlaptop" do
    assert_difference('Factoryrecertifiedacerlaptop.count') do
      post factoryrecertifiedacerlaptops_url, params: { factoryrecertifiedacerlaptop: { category_id: @factoryrecertifiedacerlaptop.category_id, colour: @factoryrecertifiedacerlaptop.colour, description: @factoryrecertifiedacerlaptop.description, image_url: @factoryrecertifiedacerlaptop.image_url, model: @factoryrecertifiedacerlaptop.model, name: @factoryrecertifiedacerlaptop.name, number: @factoryrecertifiedacerlaptop.number, price: @factoryrecertifiedacerlaptop.price, vendor: @factoryrecertifiedacerlaptop.vendor } }
    end

    assert_redirected_to factoryrecertifiedacerlaptop_url(Factoryrecertifiedacerlaptop.last)
  end

  test "should show factoryrecertifiedacerlaptop" do
    get factoryrecertifiedacerlaptop_url(@factoryrecertifiedacerlaptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_factoryrecertifiedacerlaptop_url(@factoryrecertifiedacerlaptop)
    assert_response :success
  end

  test "should update factoryrecertifiedacerlaptop" do
    patch factoryrecertifiedacerlaptop_url(@factoryrecertifiedacerlaptop), params: { factoryrecertifiedacerlaptop: { category_id: @factoryrecertifiedacerlaptop.category_id, colour: @factoryrecertifiedacerlaptop.colour, description: @factoryrecertifiedacerlaptop.description, image_url: @factoryrecertifiedacerlaptop.image_url, model: @factoryrecertifiedacerlaptop.model, name: @factoryrecertifiedacerlaptop.name, number: @factoryrecertifiedacerlaptop.number, price: @factoryrecertifiedacerlaptop.price, vendor: @factoryrecertifiedacerlaptop.vendor } }
    assert_redirected_to factoryrecertifiedacerlaptop_url(@factoryrecertifiedacerlaptop)
  end

  test "should destroy factoryrecertifiedacerlaptop" do
    assert_difference('Factoryrecertifiedacerlaptop.count', -1) do
      delete factoryrecertifiedacerlaptop_url(@factoryrecertifiedacerlaptop)
    end

    assert_redirected_to factoryrecertifiedacerlaptops_url
  end
end
