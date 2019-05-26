require 'test_helper'

class MastercaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mastercare = mastercares(:one)
  end

  test "should get index" do
    get mastercares_url
    assert_response :success
  end

  test "should get new" do
    get new_mastercare_url
    assert_response :success
  end

  test "should create mastercare" do
    assert_difference('Mastercare.count') do
      post mastercares_url, params: { mastercare: { category_id: @mastercare.category_id, courses: @mastercare.courses, description: @mastercare.description, image_url: @mastercare.image_url, name: @mastercare.name, price: @mastercare.price } }
    end

    assert_redirected_to mastercare_url(Mastercare.last)
  end

  test "should show mastercare" do
    get mastercare_url(@mastercare)
    assert_response :success
  end

  test "should get edit" do
    get edit_mastercare_url(@mastercare)
    assert_response :success
  end

  test "should update mastercare" do
    patch mastercare_url(@mastercare), params: { mastercare: { category_id: @mastercare.category_id, courses: @mastercare.courses, description: @mastercare.description, image_url: @mastercare.image_url, name: @mastercare.name, price: @mastercare.price } }
    assert_redirected_to mastercare_url(@mastercare)
  end

  test "should destroy mastercare" do
    assert_difference('Mastercare.count', -1) do
      delete mastercare_url(@mastercare)
    end

    assert_redirected_to mastercares_url
  end
end
