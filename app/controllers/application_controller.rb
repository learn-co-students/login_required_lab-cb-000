class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  before_action :require_login, only: [:welcome]
  
  def welcome
  end

  def current_user
    session[:name]
  end
  
  def logged_in?
    !!current_user
  end
  
  private
  
  def require_login
    redirect_to login_path unless logged_in?
  end
end
