class OrderItemsController < ApplicationController

  def index
    @items = current_cart.order.items
    # OrderMailer.order_items(@order_items).deliver_now
  
    # UserMailer.user_mailer(@user).deliver
  end
  
  # OrderMailer.confirm(order_item)


    # def confirm(order_item)
    # @subject = 'Company Order Confirmation'
    # @body["order"] = order
    # @recipients = order.email
    # @bcc = 'orders@… '
    # @from = 'orders@…  '
    # @sent_on = Time.now
    # @headers["Organization"] = "Company"
    # end

  def create
    
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    redirect_to cart_path
  end
  # def show
  #   @order_items = current_order.order_items
  #   @shipping = params[:shipping]

  #   OrderMailer.order_send(@order, @client).deliver
  #   flash[:notice] = "Order has been sent."
  #   redirect_to cart_path(@order.id)
  # end

  def order_subtotal
   @order_items.sum(:total_price)
  end

  def destroy
    current_cart.remove_item(id: params[:id])
    redirect_to cart_path
  end

end