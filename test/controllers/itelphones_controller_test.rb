require 'test_helper'

class ItelphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itelphone = itelphones(:one)
  end

  test "should get index" do
    get itelphones_url
    assert_response :success
  end

  test "should get new" do
    get new_itelphone_url
    assert_response :success
  end

  test "should create itelphone" do
    assert_difference('Itelphone.count') do
      post itelphones_url, params: { itelphone: { category_id: @itelphone.category_id, colour: @itelphone.colour, description: @itelphone.description, image_url: @itelphone.image_url, model: @itelphone.model, name: @itelphone.name, number: @itelphone.number, price: @itelphone.price, vendor: @itelphone.vendor } }
    end

    assert_redirected_to itelphone_url(Itelphone.last)
  end

  test "should show itelphone" do
    get itelphone_url(@itelphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_itelphone_url(@itelphone)
    assert_response :success
  end

  test "should update itelphone" do
    patch itelphone_url(@itelphone), params: { itelphone: { category_id: @itelphone.category_id, colour: @itelphone.colour, description: @itelphone.description, image_url: @itelphone.image_url, model: @itelphone.model, name: @itelphone.name, number: @itelphone.number, price: @itelphone.price, vendor: @itelphone.vendor } }
    assert_redirected_to itelphone_url(@itelphone)
  end

  test "should destroy itelphone" do
    assert_difference('Itelphone.count', -1) do
      delete itelphone_url(@itelphone)
    end

    assert_redirected_to itelphones_url
  end
end
