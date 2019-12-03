class ProductsController < ApplicationController
    
    # before_action :find_user_object,except:[:create]
    
     def index
         
         @category = Category.find(params[:category_id])
         @products = @category.products.includes(:variants).order(:title)
         # @products = @category.products.order(:title)
     end
     
    

    
    

end    