class Product < ApplicationRecord
    
    has_many :product_categories, :dependent => :destroy
    has_many :categories, through: :product_categories, :dependent => :destroy
    
    has_many :variants, class_name: 'ProductVariant'
end
