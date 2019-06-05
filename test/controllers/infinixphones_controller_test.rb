require 'test_helper'

class InfinixphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infinixphone = infinixphones(:one)
  end

  test "should get index" do
    get infinixphones_url
    assert_response :success
  end

  test "should get new" do
    get new_infinixphone_url
    assert_response :success
  end

  test "should create infinixphone" do
    assert_difference('Infinixphone.count') do
      post infinixphones_url, params: { infinixphone: { category_id: @infinixphone.category_id, colour: @infinixphone.colour, description: @infinixphone.description, image_url: @infinixphone.image_url, model: @infinixphone.model, name: @infinixphone.name, number: @infinixphone.number, price: @infinixphone.price, vendor: @infinixphone.vendor } }
    end

    assert_redirected_to infinixphone_url(Infinixphone.last)
  end

  test "should show infinixphone" do
    get infinixphone_url(@infinixphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_infinixphone_url(@infinixphone)
    assert_response :success
  end

  test "should update infinixphone" do
    patch infinixphone_url(@infinixphone), params: { infinixphone: { category_id: @infinixphone.category_id, colour: @infinixphone.colour, description: @infinixphone.description, image_url: @infinixphone.image_url, model: @infinixphone.model, name: @infinixphone.name, number: @infinixphone.number, price: @infinixphone.price, vendor: @infinixphone.vendor } }
    assert_redirected_to infinixphone_url(@infinixphone)
  end

  test "should destroy infinixphone" do
    assert_difference('Infinixphone.count', -1) do
      delete infinixphone_url(@infinixphone)
    end

    assert_redirected_to infinixphones_url
  end
end
