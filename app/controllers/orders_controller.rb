# app/controllers/orders_controller.rb

class OrdersController < ApplicationController
  def new
    @order = current_cart.order
  end
   def create
     
    @order = current_cart.order
    
    if @order.update_attributes(order_params.merge(status:'open'))
      session[:cart_token] = nil
      
      flash[:success] = t('flash.order.success')
      redirect_to root_path
    else
      flash.now[:error] = t('flash.order.error_html')
      render :new
    
    end  
     
   end
   

  private

  def order_params
    params.require(:order).permit(:first_name, :last_name,:email,:phone_number, :address, :phone, :message )
  end
end
