Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/login', to: 'users#login'
  resources :castles
  resources :bookings, only: [ :index,  :new,  :create ]
end
