class SessionsController < ApplicationController
  def new
  end

  def index
  end

  def create
    return redirect_to new_session_path if params[:name].blank?

    session[:name] = params[:name]

    redirect_to sessions_path
  end

  def destroy
    session[:name] = nil
    redirect_to new_session_path
  end
end
