Rails.application.routes.draw do
  root to: 'sessions#new'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  resources :sessions, only: [:new, :create]
  delete '/sessions', to: 'sessions#destroy'
  get '/secret', to: 'secrets#show'
  get '/welcome', to: 'statics#welcome'
end
