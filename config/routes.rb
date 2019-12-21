Rails.application.routes.draw do
  
  
  resources :posts
  devise_for :users
  
  # get 'people#index'
  match 'home/index' , via: [:get, :post]
  
  #get 'home/contact_form' 
  resources :home, only: [:index, :new, :create]
  
  
  
 
   get '/search' => 'products#search', :as => 'search_page'

  root to: 'categories#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  
get '/cart/checkout', to: 'orders#new', as: :checkout
patch '/cart/checkout', to: 'orders#create'
  
# match "/settings_redirect" => "settings#redirect", :via => "get"
#   get :send_order_mail, to: 'order_items#send_order_mail', as: :send_order_mail
#   resources :orders
  # get '/search' => 'hprlaptops#search', :as => 'search_page' 
  # get '/search' => 'retrofits#search', :as => 'search_page'  
 
  # resources :retrofits do
    # get '/search' => 'retrofits#search', :as => 'search_page'
  # end
  # resources :solarworks do
    # get '/search' => 'solarworks#search', :as => 'search_page'
  # end
end
