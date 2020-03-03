Rails.application.routes.draw do
  
  root 'sessions#new'
  post 'sessions/login', to: 'sessions#create'
  get 'secrets/show', to: 'secrets#show'
  get 'sessions/home', to: 'sessions#home'
  post 'sessions/logout', to: 'sessions#destroy'

end
