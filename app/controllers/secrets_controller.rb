class SecretsController < ApplicationController
  before_action :require_login, only: [:show]
  def show
  end

  private
  def require_login
    redirect_to new_session_path unless session.include?(:name)
  end

end
