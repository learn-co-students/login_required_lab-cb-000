class SecretsController < ApplicationController

  #before_action  :login_required

  def show
    if logged_in?
      render :show
    else
      redirect_to new_session_path
    end
  end



  def welcome

    if logged_in?
      render :welcome
    else
      redirect_to login
    end

  end


end
