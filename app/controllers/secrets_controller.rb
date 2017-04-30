class SecretsController < ApplicationController
  before_action :require_login

  def show
    @user = current_user
  end

  private

    def require_login
      redirect_to sessions_new_path unless session.include?(:name)
    end

end
