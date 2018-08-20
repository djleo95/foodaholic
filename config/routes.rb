Rails.application.routes.draw do
  devise_for :users
  root "static_pages#home"
  resources :comments
  resources :albums
  resources :images
  resources :likes
  resources :shares
  resources :users, only: [:show]
  resources :friends, only: [:create, :destroy]
  resources :recipes
  get "/my_profile" => "users#my_profile"
  get "/upload" => "albums#new"
  resources :tags, only: [:show]
  post "/search" => "searchs#show"
  get "/search" => "searchs#show"
  get "/ranking" => "searchs#index"
end
