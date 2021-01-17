Rails.application.routes.draw do
  
  root to: 'images#index'
  get 'images/search', to: 'images#search'
  resources :images
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
