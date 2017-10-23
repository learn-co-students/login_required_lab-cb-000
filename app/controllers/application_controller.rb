class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :login_required

  def login_required
    head(:forbidden) if session[:name].nil?
  end

  def current_user
    session[:name]
  end

  def logged_in?
    !!session[:name]
  end

end
