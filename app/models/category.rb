class Category < ApplicationRecord
    has_many :solarworks
    has_many :adeapartments
    has_many :dreamscomputers
    has_many :marketplaces
    has_many :tonycycles
    has_many :people
    
    
   
end
