require 'test_helper'

class DreamscomputersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dreamscomputer = dreamscomputers(:one)
  end

  test "should get index" do
    get dreamscomputers_url
    assert_response :success
  end

  test "should get new" do
    get new_dreamscomputer_url
    assert_response :success
  end

  test "should create dreamscomputer" do
    assert_difference('Dreamscomputer.count') do
      post dreamscomputers_url, params: { dreamscomputer: { category_id: @dreamscomputer.category_id, description: @dreamscomputer.description, image_url: @dreamscomputer.image_url, model: @dreamscomputer.model, name: @dreamscomputer.name, number: @dreamscomputer.number, price: @dreamscomputer.price, vendor: @dreamscomputer.vendor } }
    end

    assert_redirected_to dreamscomputer_url(Dreamscomputer.last)
  end

  test "should show dreamscomputer" do
    get dreamscomputer_url(@dreamscomputer)
    assert_response :success
  end

  test "should get edit" do
    get edit_dreamscomputer_url(@dreamscomputer)
    assert_response :success
  end

  test "should update dreamscomputer" do
    patch dreamscomputer_url(@dreamscomputer), params: { dreamscomputer: { category_id: @dreamscomputer.category_id, description: @dreamscomputer.description, image_url: @dreamscomputer.image_url, model: @dreamscomputer.model, name: @dreamscomputer.name, number: @dreamscomputer.number, price: @dreamscomputer.price, vendor: @dreamscomputer.vendor } }
    assert_redirected_to dreamscomputer_url(@dreamscomputer)
  end

  test "should destroy dreamscomputer" do
    assert_difference('Dreamscomputer.count', -1) do
      delete dreamscomputer_url(@dreamscomputer)
    end

    assert_redirected_to dreamscomputers_url
  end
end
