class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#   before_action :current_cart

#   def current_cart
#     @current_cart ||= ShoppingCart.new(token: cart_token)
#   end
#   helper_method :current_cart

#   private

#   def cart_token
#     return @cart_token unless @cart_token.nil?

#     session[:cart_token] ||= SecureRandom.hex(8)
#     @cart_token = session[:cart_token]
#   end
  
# def show
#     @order_items = current_order.order_items
   

#     OrderMailer.order_send(@order, @client).deliver
#     flash[:notice] = "Order has been sent."
    
# end
end