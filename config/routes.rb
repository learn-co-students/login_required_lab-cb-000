Rails.application.routes.draw do

  root "sessions#login"

  get   "/sessions/login", :to => "sessions#login", :as => :login
  get   "/sessions/new", :to => "sessions#new", :as => :new_session
  post  "/sessions", :to => "sessions#create"
  post  "/sessions/destroy", :to => "sessions#destroy"

  get "/secrets/show", :to => "secrets#show"

end
