Rails.application.routes.draw do
  
  resources :posts
  devise_for :users
  
  
  match '/home',     to: 'home#index',             via: 'get, post'
  resources "contacts", only: [:new, :create]
  
  
  #get 'home/index'
  #post 'home/index'
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

end
