class SessionsController < ApplicationController

  def new
    if user_logged_in
      @user = current_user
      render :home
    end
  end

  def create
    # I don't undrestand why it doens't work when I say here:
    # current_user = params[:user_name]
    # instead of
    # session[:user] = params[:user_name]
    # ????
    if params[:name].nil? || params[:name].empty?
      redirect_to :root
    else
      session[:name] = params[:name]
      @user = current_user
      render :home
    end
  end

  def destroy
    session[:name] = nil
    # session.delete :name
    redirect_to :root
  end
end
