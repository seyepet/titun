require 'test_helper'

class ThemastercaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @themastercare = themastercares(:one)
  end

  test "should get index" do
    get themastercares_url
    assert_response :success
  end

  test "should get new" do
    get new_themastercare_url
    assert_response :success
  end

  test "should create themastercare" do
    assert_difference('Themastercare.count') do
      post themastercares_url, params: { themastercare: { category_id: @themastercare.category_id, courses: @themastercare.courses, description: @themastercare.description, image_url: @themastercare.image_url, name: @themastercare.name, price: @themastercare.price } }
    end

    assert_redirected_to themastercare_url(Themastercare.last)
  end

  test "should show themastercare" do
    get themastercare_url(@themastercare)
    assert_response :success
  end

  test "should get edit" do
    get edit_themastercare_url(@themastercare)
    assert_response :success
  end

  test "should update themastercare" do
    patch themastercare_url(@themastercare), params: { themastercare: { category_id: @themastercare.category_id, courses: @themastercare.courses, description: @themastercare.description, image_url: @themastercare.image_url, name: @themastercare.name, price: @themastercare.price } }
    assert_redirected_to themastercare_url(@themastercare)
  end

  test "should destroy themastercare" do
    assert_difference('Themastercare.count', -1) do
      delete themastercare_url(@themastercare)
    end

    assert_redirected_to themastercares_url
  end
end
