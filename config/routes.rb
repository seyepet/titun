Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
