class SessionsController < ApplicationController
  def create
    if !params[:name] || params[:name].empty?
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to welcome_path
    end
  end

  def new
  end

  def destroy
    session[:name] = nil
  end
end
