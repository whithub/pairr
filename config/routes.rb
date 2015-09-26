Rails.application.routes.draw do

  root 'home#index'
  get  '/dashboard', to: 'dashboard#show'

  get '/auth/twitter', as: :login
  get '/auth/github/callback',     to: 'sessions#create' #we need this route to match with one of our controllers
  get '/auth/failure',             to: 'sessions#failure'
  get '/logout',      as: :logout, to: 'sessions#destroy'
  # delete '/logout',              to: 'sessions#destroy'  #same as above

  resources :users
end
