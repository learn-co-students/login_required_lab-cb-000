class SessionsController < ApplicationController

  before_action :require_logged_in
  skip_before_action :require_logged_in, only: [:new, :create]

  def index

  end

  def new

  end

  def create
    # raise params.inspect
    session[:name] = params[:name] unless params[:name] == ""
    if session[:name]
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to login_path
  end

end
