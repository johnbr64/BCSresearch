Rails.application.routes.draw do
  devise_for :users
  
#  namespace :api do
#    scope :v1 do     
#  mount_devise_token_auth_for 'User', at: 'auth'
#  end
#end
  authenticate :user do
    root 'pages#home'
  end
  resources :categories
  resources :p_types
  resources :publications
  resources :publishers
  #resources :users, 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors
  
  
end
