Rails.application.routes.draw do
  root to: 'pages#home'

  get '/login', to: 'users#login'
  resources :castles
  resources :bookings, only: [ :index,  :new,  :create ]
end
