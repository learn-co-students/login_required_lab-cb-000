class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to :root
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
  	session[:name] = nil
    redirect_to :root
  end

end