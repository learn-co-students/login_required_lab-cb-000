Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy] do
    collection do
      post 'destroy', action: :destroy
    end
  end

  resources :secrets, only: [:show] do
    collection do
      get "show", action: :show
    end
  end

end
