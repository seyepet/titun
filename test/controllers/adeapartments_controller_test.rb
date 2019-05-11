require 'test_helper'

class AdeapartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adeapartment = adeapartments(:one)
  end

  test "should get index" do
    get adeapartments_url
    assert_response :success
  end

  test "should get new" do
    get new_adeapartment_url
    assert_response :success
  end

  test "should create adeapartment" do
    assert_difference('Adeapartment.count') do
      post adeapartments_url, params: { adeapartment: { address: @adeapartment.address, category_id: @adeapartment.category_id, description: @adeapartment.description, image_url: @adeapartment.image_url, name: @adeapartment.name, price: @adeapartment.price } }
    end

    assert_redirected_to adeapartment_url(Adeapartment.last)
  end

  test "should show adeapartment" do
    get adeapartment_url(@adeapartment)
    assert_response :success
  end

  test "should get edit" do
    get edit_adeapartment_url(@adeapartment)
    assert_response :success
  end

  test "should update adeapartment" do
    patch adeapartment_url(@adeapartment), params: { adeapartment: { address: @adeapartment.address, category_id: @adeapartment.category_id, description: @adeapartment.description, image_url: @adeapartment.image_url, name: @adeapartment.name, price: @adeapartment.price } }
    assert_redirected_to adeapartment_url(@adeapartment)
  end

  test "should destroy adeapartment" do
    assert_difference('Adeapartment.count', -1) do
      delete adeapartment_url(@adeapartment)
    end

    assert_redirected_to adeapartments_url
  end
end
