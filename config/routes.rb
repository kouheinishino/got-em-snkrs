Rails.application.routes.draw do
  resources :items
  root 'top#index'
  get 'top/index'
  get 'top/show'
end
