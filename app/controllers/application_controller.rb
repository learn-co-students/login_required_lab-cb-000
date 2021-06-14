class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name] unless session[:name].blank?
  end

  def logged_in?
  redirect_to '/new' unless current_user
  end


end
