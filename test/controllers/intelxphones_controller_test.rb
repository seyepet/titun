require 'test_helper'

class IntelxphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intelxphone = intelxphones(:one)
  end

  test "should get index" do
    get intelxphones_url
    assert_response :success
  end

  test "should get new" do
    get new_intelxphone_url
    assert_response :success
  end

  test "should create intelxphone" do
    assert_difference('Intelxphone.count') do
      post intelxphones_url, params: { intelxphone: { category_id: @intelxphone.category_id, colour: @intelxphone.colour, description: @intelxphone.description, image_url: @intelxphone.image_url, model: @intelxphone.model, name: @intelxphone.name, number: @intelxphone.number, price: @intelxphone.price, vendor: @intelxphone.vendor } }
    end

    assert_redirected_to intelxphone_url(Intelxphone.last)
  end

  test "should show intelxphone" do
    get intelxphone_url(@intelxphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_intelxphone_url(@intelxphone)
    assert_response :success
  end

  test "should update intelxphone" do
    patch intelxphone_url(@intelxphone), params: { intelxphone: { category_id: @intelxphone.category_id, colour: @intelxphone.colour, description: @intelxphone.description, image_url: @intelxphone.image_url, model: @intelxphone.model, name: @intelxphone.name, number: @intelxphone.number, price: @intelxphone.price, vendor: @intelxphone.vendor } }
    assert_redirected_to intelxphone_url(@intelxphone)
  end

  test "should destroy intelxphone" do
    assert_difference('Intelxphone.count', -1) do
      delete intelxphone_url(@intelxphone)
    end

    assert_redirected_to intelxphones_url
  end
end
