class SecretsController < ApplicationController
  before_action :protected!

  def show

  end

  private

  def protected!
    redirect_to new_session_path unless current_user
  end
end
