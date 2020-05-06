Rails.application.routes.draw do
  get 'room/show'
  resources :rooms, only: [:show, :create]
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  root 'home#top'
  get 'home/about'
end
