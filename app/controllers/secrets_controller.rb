class SecretsController < ActionController::Base
  before_action :require_logged_in

  def show
  end

  def current_user
    session[:name]
  end
  
  private

  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end
end
