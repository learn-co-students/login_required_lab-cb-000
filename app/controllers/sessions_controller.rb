class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to sessions_home_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end

  def home
  end



end