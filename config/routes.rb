Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/login', to: 'users#login'
  resources :castles do
    collection do
      get :my_castles
      get ":id/my_castle_bookings/", to: "castles#my_castle_bookings", as: "my_castle_bookings"
    end
    resources :bookings, only: [ :new,  :create ]
  end

  resources :bookings, only: [ :index, :edit, :destroy ]
end
