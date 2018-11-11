class SessionsController < ApplicationController

  before_action :require_login
  skip_before_action :require_login, only: [:create]

  def new

  end

  def create

    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
    end

  end

  def destroy
    session.clear unless session[:name].nil?
  end

  private

  def require_login
    redirect_to '/login' unless current_user
  end

end
