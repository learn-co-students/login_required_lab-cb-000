class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  def authentication_required
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

  def current_user
    session[:name]
  end

end
