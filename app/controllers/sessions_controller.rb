class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    if session.include?(:name) && session[:name] != nil
      session.clear
      redirect_to sessions_new_path
    else
      redirect_to sessions_new_path
    end
  end
end
