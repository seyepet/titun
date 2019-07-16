require 'test_helper'

class LocalPurchasingOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @local_purchasing_order = local_purchasing_orders(:one)
  end

  test "should get index" do
    get local_purchasing_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_local_purchasing_order_url
    assert_response :success
  end

  test "should create local_purchasing_order" do
    assert_difference('LocalPurchasingOrder.count') do
      post local_purchasing_orders_url, params: { local_purchasing_order: { amount: @local_purchasing_order.amount, contragent: @local_purchasing_order.contragent, currency: @local_purchasing_order.currency, date: @local_purchasing_order.date, name: @local_purchasing_order.name } }
    end

    assert_redirected_to local_purchasing_order_url(LocalPurchasingOrder.last)
  end

  test "should show local_purchasing_order" do
    get local_purchasing_order_url(@local_purchasing_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_local_purchasing_order_url(@local_purchasing_order)
    assert_response :success
  end

  test "should update local_purchasing_order" do
    patch local_purchasing_order_url(@local_purchasing_order), params: { local_purchasing_order: { amount: @local_purchasing_order.amount, contragent: @local_purchasing_order.contragent, currency: @local_purchasing_order.currency, date: @local_purchasing_order.date, name: @local_purchasing_order.name } }
    assert_redirected_to local_purchasing_order_url(@local_purchasing_order)
  end

  test "should destroy local_purchasing_order" do
    assert_difference('LocalPurchasingOrder.count', -1) do
      delete local_purchasing_order_url(@local_purchasing_order)
    end

    assert_redirected_to local_purchasing_orders_url
  end
end
