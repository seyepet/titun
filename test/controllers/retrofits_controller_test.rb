require 'test_helper'

class RetrofitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @retrofit = retrofits(:one)
  end

  test "should get index" do
    get retrofits_url
    assert_response :success
  end

  test "should get new" do
    get new_retrofit_url
    assert_response :success
  end

  test "should create retrofit" do
    assert_difference('Retrofit.count') do
      post retrofits_url, params: { retrofit: { category_id: @retrofit.category_id, colour: @retrofit.colour, description: @retrofit.description, image_url: @retrofit.image_url, model: @retrofit.model, name: @retrofit.name, number: @retrofit.number, price: @retrofit.price, vendor: @retrofit.vendor } }
    end

    assert_redirected_to retrofit_url(Retrofit.last)
  end

  test "should show retrofit" do
    get retrofit_url(@retrofit)
    assert_response :success
  end

  test "should get edit" do
    get edit_retrofit_url(@retrofit)
    assert_response :success
  end

  test "should update retrofit" do
    patch retrofit_url(@retrofit), params: { retrofit: { category_id: @retrofit.category_id, colour: @retrofit.colour, description: @retrofit.description, image_url: @retrofit.image_url, model: @retrofit.model, name: @retrofit.name, number: @retrofit.number, price: @retrofit.price, vendor: @retrofit.vendor } }
    assert_redirected_to retrofit_url(@retrofit)
  end

  test "should destroy retrofit" do
    assert_difference('Retrofit.count', -1) do
      delete retrofit_url(@retrofit)
    end

    assert_redirected_to retrofits_url
  end
end
