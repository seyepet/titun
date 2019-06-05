require 'test_helper'

class HprlaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hprlaptop = hprlaptops(:one)
  end

  test "should get index" do
    get hprlaptops_url
    assert_response :success
  end

  test "should get new" do
    get new_hprlaptop_url
    assert_response :success
  end

  test "should create hprlaptop" do
    assert_difference('Hprlaptop.count') do
      post hprlaptops_url, params: { hprlaptop: { category_id: @hprlaptop.category_id, colour: @hprlaptop.colour, description: @hprlaptop.description, image_url: @hprlaptop.image_url, model: @hprlaptop.model, name: @hprlaptop.name, number: @hprlaptop.number, price: @hprlaptop.price, vendor: @hprlaptop.vendor } }
    end

    assert_redirected_to hprlaptop_url(Hprlaptop.last)
  end

  test "should show hprlaptop" do
    get hprlaptop_url(@hprlaptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_hprlaptop_url(@hprlaptop)
    assert_response :success
  end

  test "should update hprlaptop" do
    patch hprlaptop_url(@hprlaptop), params: { hprlaptop: { category_id: @hprlaptop.category_id, colour: @hprlaptop.colour, description: @hprlaptop.description, image_url: @hprlaptop.image_url, model: @hprlaptop.model, name: @hprlaptop.name, number: @hprlaptop.number, price: @hprlaptop.price, vendor: @hprlaptop.vendor } }
    assert_redirected_to hprlaptop_url(@hprlaptop)
  end

  test "should destroy hprlaptop" do
    assert_difference('Hprlaptop.count', -1) do
      delete hprlaptop_url(@hprlaptop)
    end

    assert_redirected_to hprlaptops_url
  end
end
