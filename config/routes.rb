Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :comments
  resources :albums
  resources :images
  resources :likes
  resources :shares
end
