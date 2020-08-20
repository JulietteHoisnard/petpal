Rails.application.routes.draw do
  # get 'users/:id', to: 'users#show'
  # get 'users/:id/edit', to: 'users#edit'
  # patch 'users/:id' , to: 'users#update'
  get 'dashboard', to: 'dashboard#index'
  get 'profile', to: 'profile#index'
  # get 'appointments/new', to: 'appointments#new'
  # post 'appointments/create', to: 'appointments#create'
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update]
  resources :pets do
    resources :appointments, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
