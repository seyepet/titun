require 'test_helper'

class SolarworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solarwork = solarworks(:one)
  end

  test "should get index" do
    get solarworks_url
    assert_response :success
  end

  test "should get new" do
    get new_solarwork_url
    assert_response :success
  end

  test "should create solarwork" do
    assert_difference('Solarwork.count') do
      post solarworks_url, params: { solarwork: { category_id: @solarwork.category_id, code: @solarwork.code, description: @solarwork.description, image_url: @solarwork.image_url, name: @solarwork.name, price: @solarwork.price } }
    end

    assert_redirected_to solarwork_url(Solarwork.last)
  end

  test "should show solarwork" do
    get solarwork_url(@solarwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_solarwork_url(@solarwork)
    assert_response :success
  end

  test "should update solarwork" do
    patch solarwork_url(@solarwork), params: { solarwork: { category_id: @solarwork.category_id, code: @solarwork.code, description: @solarwork.description, image_url: @solarwork.image_url, name: @solarwork.name, price: @solarwork.price } }
    assert_redirected_to solarwork_url(@solarwork)
  end

  test "should destroy solarwork" do
    assert_difference('Solarwork.count', -1) do
      delete solarwork_url(@solarwork)
    end

    assert_redirected_to solarworks_url
  end
end
