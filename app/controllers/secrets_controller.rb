class SecretsController < ApplicationController

  def show
    redirect_to '/login' unless current_user
  end

end
