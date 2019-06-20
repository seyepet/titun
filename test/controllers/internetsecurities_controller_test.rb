require 'test_helper'

class InternetsecuritiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internetsecurity = internetsecurities(:one)
  end

  test "should get index" do
    get internetsecurities_url
    assert_response :success
  end

  test "should get new" do
    get new_internetsecurity_url
    assert_response :success
  end

  test "should create internetsecurity" do
    assert_difference('Internetsecurity.count') do
      post internetsecurities_url, params: { internetsecurity: { about: @internetsecurity.about, capacity: @internetsecurity.capacity, category_id: @internetsecurity.category_id, description: @internetsecurity.description, image_url: @internetsecurity.image_url, name: @internetsecurity.name, noofdevice: @internetsecurity.noofdevice, number: @internetsecurity.number, price: @internetsecurity.price, type: @internetsecurity.type, user: @internetsecurity.user, vendor: @internetsecurity.vendor } }
    end

    assert_redirected_to internetsecurity_url(Internetsecurity.last)
  end

  test "should show internetsecurity" do
    get internetsecurity_url(@internetsecurity)
    assert_response :success
  end

  test "should get edit" do
    get edit_internetsecurity_url(@internetsecurity)
    assert_response :success
  end

  test "should update internetsecurity" do
    patch internetsecurity_url(@internetsecurity), params: { internetsecurity: { about: @internetsecurity.about, capacity: @internetsecurity.capacity, category_id: @internetsecurity.category_id, description: @internetsecurity.description, image_url: @internetsecurity.image_url, name: @internetsecurity.name, noofdevice: @internetsecurity.noofdevice, number: @internetsecurity.number, price: @internetsecurity.price, type: @internetsecurity.type, user: @internetsecurity.user, vendor: @internetsecurity.vendor } }
    assert_redirected_to internetsecurity_url(@internetsecurity)
  end

  test "should destroy internetsecurity" do
    assert_difference('Internetsecurity.count', -1) do
      delete internetsecurity_url(@internetsecurity)
    end

    assert_redirected_to internetsecurities_url
  end
end
