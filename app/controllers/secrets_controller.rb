class SecretsController < ActionController::Base
  before_action :require_login

  def require_login
    return head(:forbidden) unless session.include? :name   
  end
end
