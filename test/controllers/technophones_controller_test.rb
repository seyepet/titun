require 'test_helper'

class TechnophonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technophone = technophones(:one)
  end

  test "should get index" do
    get technophones_url
    assert_response :success
  end

  test "should get new" do
    get new_technophone_url
    assert_response :success
  end

  test "should create technophone" do
    assert_difference('Technophone.count') do
      post technophones_url, params: { technophone: { category_id: @technophone.category_id, colour: @technophone.colour, description: @technophone.description, image_url: @technophone.image_url, model: @technophone.model, name: @technophone.name, number: @technophone.number, price: @technophone.price, vendor: @technophone.vendor } }
    end

    assert_redirected_to technophone_url(Technophone.last)
  end

  test "should show technophone" do
    get technophone_url(@technophone)
    assert_response :success
  end

  test "should get edit" do
    get edit_technophone_url(@technophone)
    assert_response :success
  end

  test "should update technophone" do
    patch technophone_url(@technophone), params: { technophone: { category_id: @technophone.category_id, colour: @technophone.colour, description: @technophone.description, image_url: @technophone.image_url, model: @technophone.model, name: @technophone.name, number: @technophone.number, price: @technophone.price, vendor: @technophone.vendor } }
    assert_redirected_to technophone_url(@technophone)
  end

  test "should destroy technophone" do
    assert_difference('Technophone.count', -1) do
      delete technophone_url(@technophone)
    end

    assert_redirected_to technophones_url
  end
end
