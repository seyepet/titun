require 'test_helper'

class RofimachinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rofimachine = rofimachines(:one)
  end

  test "should get index" do
    get rofimachines_url
    assert_response :success
  end

  test "should get new" do
    get new_rofimachine_url
    assert_response :success
  end

  test "should create rofimachine" do
    assert_difference('Rofimachine.count') do
      post rofimachines_url, params: { rofimachine: { category_id: @rofimachine.category_id, code: @rofimachine.code, description: @rofimachine.description, image_url: @rofimachine.image_url, name: @rofimachine.name, price: @rofimachine.price } }
    end

    assert_redirected_to rofimachine_url(Rofimachine.last)
  end

  test "should show rofimachine" do
    get rofimachine_url(@rofimachine)
    assert_response :success
  end

  test "should get edit" do
    get edit_rofimachine_url(@rofimachine)
    assert_response :success
  end

  test "should update rofimachine" do
    patch rofimachine_url(@rofimachine), params: { rofimachine: { category_id: @rofimachine.category_id, code: @rofimachine.code, description: @rofimachine.description, image_url: @rofimachine.image_url, name: @rofimachine.name, price: @rofimachine.price } }
    assert_redirected_to rofimachine_url(@rofimachine)
  end

  test "should destroy rofimachine" do
    assert_difference('Rofimachine.count', -1) do
      delete rofimachine_url(@rofimachine)
    end

    assert_redirected_to rofimachines_url
  end
end
