Rails.application.routes.draw do
  
  
  resources :categories
  resources :p_types
  root :to => "pages#home"
  resources :publications
  resources :publishers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors
end
