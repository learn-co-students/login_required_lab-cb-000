Rails.application.routes.draw do
  resources :sessions, only: [:index, :new, :create]

  get '/', to: 'secrets#show', as: 'secret'
  delete '/sessions', to: 'sessions#destroy', as: 'logout'
end
