class SecretsController < ApplicationController
  before_action :require_login
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
      render "secret_page"
  end

  private
  def require_login

    return head(:forbidden) unless
    session[:name].include? current_user
  end

end
