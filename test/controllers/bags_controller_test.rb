require 'test_helper'

class BagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bag = bags(:one)
  end

  test "should get index" do
    get bags_url
    assert_response :success
  end

  test "should get new" do
    get new_bag_url
    assert_response :success
  end

  test "should create bag" do
    assert_difference('Bag.count') do
      post bags_url, params: { bag: { about: @bag.about, category_id: @bag.category_id, colour: @bag.colour, description: @bag.description, image_url: @bag.image_url, material: @bag.material, model: @bag.model, name: @bag.name, number: @bag.number, price: @bag.price, size: @bag.size, vendor: @bag.vendor } }
    end

    assert_redirected_to bag_url(Bag.last)
  end

  test "should show bag" do
    get bag_url(@bag)
    assert_response :success
  end

  test "should get edit" do
    get edit_bag_url(@bag)
    assert_response :success
  end

  test "should update bag" do
    patch bag_url(@bag), params: { bag: { about: @bag.about, category_id: @bag.category_id, colour: @bag.colour, description: @bag.description, image_url: @bag.image_url, material: @bag.material, model: @bag.model, name: @bag.name, number: @bag.number, price: @bag.price, size: @bag.size, vendor: @bag.vendor } }
    assert_redirected_to bag_url(@bag)
  end

  test "should destroy bag" do
    assert_difference('Bag.count', -1) do
      delete bag_url(@bag)
    end

    assert_redirected_to bags_url
  end
end
