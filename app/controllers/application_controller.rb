class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_loged_in
  def current_user
    session[:name]
  end

  def user_logged_in
    session.include? :name
  end

  def require_logged_in
    redirect_to :root unless current_user
  end
end
