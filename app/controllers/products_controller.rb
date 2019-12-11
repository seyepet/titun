class ProductsController < ApplicationController
    
    # before_action :find_user_object,except:[:create]
    invisible_captcha only: [:orders, :products, :order_items, :categories]
    
     def index
         
         @category = Category.find(params[:category_id])
         @products = @category.products.includes(:variants).order(:title)
         # @products = @category.products.order(:title)
     end
     
    

    
    

end    