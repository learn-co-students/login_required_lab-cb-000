class SecretsController < ApplicationController
before_action :require_login
  def show
  end

  def require_login
    if current_user
      @name = session[:name]
    else
      redirect_to sessions_new_path
    end
  end
end
