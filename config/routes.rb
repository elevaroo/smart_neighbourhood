Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    patch 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'account', to: 'pages#account'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:show, :edit, :update]
end
