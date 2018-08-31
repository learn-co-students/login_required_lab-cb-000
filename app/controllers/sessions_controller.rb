class SessionsController < ApplicationController
  def create
    session[:name] = params[:name] if params[:name].present?
    if current_user.nil?
      redirect_to new_session_path
    else
      redirect_to user_path
    end
  end

  def new
  end

  def show
    @current_user = current_user
  end

  def destroy
    session.clear
  end
end
