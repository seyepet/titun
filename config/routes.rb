Rails.application.routes.draw do
  get 'home/index'
  get 'home/ronis'
  get 'home/shop'
  get 'home/marketplacehome'
  get 'home/ticker'
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
  # get 'contacts/new' => 'dreamscomputers#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
