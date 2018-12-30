class SecretsController < ApplicationController
  def show
    if current_user.nil?
      redirect_to new_session_path
    end
  end
end
