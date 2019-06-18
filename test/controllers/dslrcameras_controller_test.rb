require 'test_helper'

class DslrcamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dslrcamera = dslrcameras(:one)
  end

  test "should get index" do
    get dslrcameras_url
    assert_response :success
  end

  test "should get new" do
    get new_dslrcamera_url
    assert_response :success
  end

  test "should create dslrcamera" do
    assert_difference('Dslrcamera.count') do
      post dslrcameras_url, params: { dslrcamera: { category_id: @dslrcamera.category_id, code: @dslrcamera.code, colour: @dslrcamera.colour, description: @dslrcamera.description, image_url: @dslrcamera.image_url, model: @dslrcamera.model, name: @dslrcamera.name, number: @dslrcamera.number, price: @dslrcamera.price, vendor: @dslrcamera.vendor } }
    end

    assert_redirected_to dslrcamera_url(Dslrcamera.last)
  end

  test "should show dslrcamera" do
    get dslrcamera_url(@dslrcamera)
    assert_response :success
  end

  test "should get edit" do
    get edit_dslrcamera_url(@dslrcamera)
    assert_response :success
  end

  test "should update dslrcamera" do
    patch dslrcamera_url(@dslrcamera), params: { dslrcamera: { category_id: @dslrcamera.category_id, code: @dslrcamera.code, colour: @dslrcamera.colour, description: @dslrcamera.description, image_url: @dslrcamera.image_url, model: @dslrcamera.model, name: @dslrcamera.name, number: @dslrcamera.number, price: @dslrcamera.price, vendor: @dslrcamera.vendor } }
    assert_redirected_to dslrcamera_url(@dslrcamera)
  end

  test "should destroy dslrcamera" do
    assert_difference('Dslrcamera.count', -1) do
      delete dslrcamera_url(@dslrcamera)
    end

    assert_redirected_to dslrcameras_url
  end
end
