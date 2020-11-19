Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/login', to: 'users#login'
  resources :castles do
    resources :bookings, only: [ :new,  :create ]
  end
  resources :bookings, only: [:index, :destroy]
end
