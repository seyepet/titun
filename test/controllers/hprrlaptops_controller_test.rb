require 'test_helper'

class HprrlaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hprrlaptop = hprrlaptops(:one)
  end

  test "should get index" do
    get hprrlaptops_url
    assert_response :success
  end

  test "should get new" do
    get new_hprrlaptop_url
    assert_response :success
  end

  test "should create hprrlaptop" do
    assert_difference('Hprrlaptop.count') do
      post hprrlaptops_url, params: { hprrlaptop: { category_id: @hprrlaptop.category_id, colour: @hprrlaptop.colour, description: @hprrlaptop.description, image_url: @hprrlaptop.image_url, model: @hprrlaptop.model, name: @hprrlaptop.name, number: @hprrlaptop.number, price: @hprrlaptop.price, vendor: @hprrlaptop.vendor } }
    end

    assert_redirected_to hprrlaptop_url(Hprrlaptop.last)
  end

  test "should show hprrlaptop" do
    get hprrlaptop_url(@hprrlaptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_hprrlaptop_url(@hprrlaptop)
    assert_response :success
  end

  test "should update hprrlaptop" do
    patch hprrlaptop_url(@hprrlaptop), params: { hprrlaptop: { category_id: @hprrlaptop.category_id, colour: @hprrlaptop.colour, description: @hprrlaptop.description, image_url: @hprrlaptop.image_url, model: @hprrlaptop.model, name: @hprrlaptop.name, number: @hprrlaptop.number, price: @hprrlaptop.price, vendor: @hprrlaptop.vendor } }
    assert_redirected_to hprrlaptop_url(@hprrlaptop)
  end

  test "should destroy hprrlaptop" do
    assert_difference('Hprrlaptop.count', -1) do
      delete hprrlaptop_url(@hprrlaptop)
    end

    assert_redirected_to hprrlaptops_url
  end
end
