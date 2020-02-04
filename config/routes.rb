Rails.application.routes.draw do
  root 'top#index'
  resources :categories
  resources :items
end
