Rails.application.routes.draw do
  get 'appointments/new'
  get 'appointments/create'
  devise_for :users
  root to: 'pages#home'
  resources :pets
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

