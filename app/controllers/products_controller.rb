class ProductsController < ApplicationController
    
    # before_action :find_user_object,except:[:create]
    
     def index
         @products = Product.all
         @category = Category.find(params[:category_id])
         @products = @category.products.order(:title)
     end
     
     def search  
         if params[:search].blank?  
          redirect_to(root_path, alert: "Empty field!") and return  
         else  
           @parameter = params[:search].downcase  
           @results = Product.all.where("lower(title) LIKE :search", search: @parameter)  
         end  
     end

    
    

end    