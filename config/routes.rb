Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get '/bookings/:id/accept',  to: 'bookings#accept', as: 'accept'
  get '/bookings/:id/decline',  to: 'bookings#decline', as: 'decline'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:show, :edit, :update]
end
