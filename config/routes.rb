Rails.application.routes.draw do
  resources :standards
  resources :subjects
  resources :addresses
  resources :names
  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
