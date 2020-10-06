Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :users, only: [:show,:index,:edit,:update] do
    member do
     get :following, :followers
    end
  end
  resources :books
  get 'home/about' => 'homes#about', as: 'about'
  resources :relationships, only: [:create, :destroy]
  
end