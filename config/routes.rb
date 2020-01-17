Rails.application.routes.draw do
  root 'top#index'
  get 'top/index'
  get 'top/show'
end
