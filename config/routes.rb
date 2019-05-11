Rails.application.routes.draw do
  
 devise_scope :user do
  root to: "devise/registrations#new"
 end
 
 
  resources :posts
  devise_for :users
  resources :people
 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
