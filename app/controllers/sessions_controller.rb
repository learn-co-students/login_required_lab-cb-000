class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to action: "welcome"
    end
  end

  def create
    if params[:name].nil? || params[:name] == ''
      redirect_to "/"
    else
      session[:name] = params[:name]
      render "welcome"
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

  private

  def require_login
    redirect_to '/' unless session.include? :name
  end
end
