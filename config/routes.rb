Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'show' => 'secrets#show'
  get 'login' => 'sessions#new'
  post 'destroy' => 'sessions#destroy'

resources :sessions, only: [:new, :create]
end
