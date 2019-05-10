class SecretsController < ApplicationController
  before_action :require_login

  def show
  end


  private

  def require_login
    #return head(:forbidden) unless current_user
    redirect_to login_path unless current_user
  end
end
