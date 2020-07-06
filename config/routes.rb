Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'home/about' => 'home#about'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
end