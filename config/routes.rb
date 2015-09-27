Rails.application.routes.draw do

  root 'home#index'
  get  '/dashboard', to: 'dashboard#show'

  get '/auth/twitter', as: :login
  get '/auth/github/callback',     to: 'sessions#create' #we need this route to match with one of our controllers
  get '/auth/failure',             to: 'sessions#failure'
  get '/logout',      as: :logout, to: 'sessions#destroy'

  resources :users do
    resources :friendships, only: [:index]

    post 'friendships/reject', to: 'friendships#reject'
    post 'friendships/approve', to: 'friendships#approve'
  end

end
