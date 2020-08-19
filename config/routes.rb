Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index'
  # get 'appointments/new', to: 'appointments#new'
  # post 'appointments/create', to: 'appointments#create'
  devise_for :users
  root to: 'pages#home'
  resources :pets do
    resources :appointments, only: [:new, :create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
