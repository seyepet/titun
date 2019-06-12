require 'test_helper'

class NewhplaptopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newhplaptop = newhplaptops(:one)
  end

  test "should get index" do
    get newhplaptops_url
    assert_response :success
  end

  test "should get new" do
    get new_newhplaptop_url
    assert_response :success
  end

  test "should create newhplaptop" do
    assert_difference('Newhplaptop.count') do
      post newhplaptops_url, params: { newhplaptop: { category_id: @newhplaptop.category_id, colour: @newhplaptop.colour, description: @newhplaptop.description, image_url: @newhplaptop.image_url, model: @newhplaptop.model, name: @newhplaptop.name, number: @newhplaptop.number, price: @newhplaptop.price, vendor: @newhplaptop.vendor } }
    end

    assert_redirected_to newhplaptop_url(Newhplaptop.last)
  end

  test "should show newhplaptop" do
    get newhplaptop_url(@newhplaptop)
    assert_response :success
  end

  test "should get edit" do
    get edit_newhplaptop_url(@newhplaptop)
    assert_response :success
  end

  test "should update newhplaptop" do
    patch newhplaptop_url(@newhplaptop), params: { newhplaptop: { category_id: @newhplaptop.category_id, colour: @newhplaptop.colour, description: @newhplaptop.description, image_url: @newhplaptop.image_url, model: @newhplaptop.model, name: @newhplaptop.name, number: @newhplaptop.number, price: @newhplaptop.price, vendor: @newhplaptop.vendor } }
    assert_redirected_to newhplaptop_url(@newhplaptop)
  end

  test "should destroy newhplaptop" do
    assert_difference('Newhplaptop.count', -1) do
      delete newhplaptop_url(@newhplaptop)
    end

    assert_redirected_to newhplaptops_url
  end
end
