class SessionsController < ApplicationController
  
  def new
  end

  def create
    if params[:name] != "" && params[:name] != nil
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to sessions_new_path
  end
end