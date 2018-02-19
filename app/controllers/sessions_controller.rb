class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to 'secrets_show_path'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end


end
