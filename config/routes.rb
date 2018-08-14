Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#home'
  resources :albums
  resources :images
  resources :comments
end
