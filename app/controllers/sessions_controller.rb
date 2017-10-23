class SessionsController < ApplicationController


  def new
    render :new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to login_path
    else
      redirect_to new_session_path
    end
  end

  def login
    render :welcome
  end

  def destroy
    session[:name] = nil if session[:name].present?
    redirect_to new_session_path 
  end


end
