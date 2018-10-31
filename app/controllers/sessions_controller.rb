class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank? || !params[:name]
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to controller: 'secrets', action: 'show'
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'welcome'
  end
end
