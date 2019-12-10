Rails.application.routes.draw do
  
  # resources :retrofits
  
  # get 'home/index'
  # get 'home/add'
 
  
  # resources :home
#   resources :solarworks
  
  resources :categories
  resources :posts
  devise_for :users
  
  # get 'people#index'
  # get 'home/index' 
  get 'home/contact_form' 
  post 'home/contact_form' 
  get 'home/contact_form' => 'home#index'
  get 'contacts/new' => 'dreamscomputers#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
#   get '/search' => 'products#search', :as => 'search_page'

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
  get '/search' => 'retrofits#search', :as => 'search_page'  
 
  resources :retrofits do
    get '/search' => 'retrofits#search', :as => 'search_page'
  end
  resources :solarworks do
    get '/search' => 'solarworks#search', :as => 'search_page'
  end
end
