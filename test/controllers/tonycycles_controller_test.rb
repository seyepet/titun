require 'test_helper'

class TonycyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tonycycle = tonycycles(:one)
  end

  test "should get index" do
    get tonycycles_url
    assert_response :success
  end

  test "should get new" do
    get new_tonycycle_url
    assert_response :success
  end

  test "should create tonycycle" do
    assert_difference('Tonycycle.count') do
      post tonycycles_url, params: { tonycycle: { brand: @tonycycle.brand, category_id: @tonycycle.category_id, gear_type: @tonycycle.gear_type, image_url: @tonycycle.image_url, model: @tonycycle.model, number_of_wheels: @tonycycle.number_of_wheels, price: @tonycycle.price, purchased: @tonycycle.purchased, year: @tonycycle.year } }
    end

    assert_redirected_to tonycycle_url(Tonycycle.last)
  end

  test "should show tonycycle" do
    get tonycycle_url(@tonycycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_tonycycle_url(@tonycycle)
    assert_response :success
  end

  test "should update tonycycle" do
    patch tonycycle_url(@tonycycle), params: { tonycycle: { brand: @tonycycle.brand, category_id: @tonycycle.category_id, gear_type: @tonycycle.gear_type, image_url: @tonycycle.image_url, model: @tonycycle.model, number_of_wheels: @tonycycle.number_of_wheels, price: @tonycycle.price, purchased: @tonycycle.purchased, year: @tonycycle.year } }
    assert_redirected_to tonycycle_url(@tonycycle)
  end

  test "should destroy tonycycle" do
    assert_difference('Tonycycle.count', -1) do
      delete tonycycle_url(@tonycycle)
    end

    assert_redirected_to tonycycles_url
  end
end
