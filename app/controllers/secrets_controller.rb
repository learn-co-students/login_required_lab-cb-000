class SecretsController < ApplicationController
  def show
    redirect_to '/login' if !current_user
  end
end
