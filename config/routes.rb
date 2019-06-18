Rails.application.routes.draw do
  resources :bags
  resources :dslrcameras
  resources :newhplaptops
  resources :itelphones
  resources :intelxphones
  resources :infinixphones
  resources :technophones
  resources :retrofits
  resources :hprrlaptops
  resources :hprlaptops
  resources :factoryrecertifiedacerlaptops
  resources :factoryrecertifieddelllaptops
  resources :themastercares
  resources :schools
  get 'home/index'
  get 'home/add'
  resources :rofimachines
 
  get 'home/ronis'
  get 'people/shop'
  get 'home/marketplacehome'
  get 'people/ticker'
  resources :home
  resources :contacts
  resources :solarworks
  resources :tonycycles
  resources :adeapartments
  resources :dreamscomputers
  resources :marketplaces
  resources :categories
  resources :posts
  devise_for :users
  resources :people
  root 'people#index'
  get 'home/index' 
  get 'home/contact_form' 
  post 'home/contact_form' 
  get 'home/contact_form' => 'home#index'
  get 'contacts/new' => 'dreamscomputers#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
