class SecretsController < ApplicationController
  def show
    redirect_to login_path unless logged_in?
  end
end
