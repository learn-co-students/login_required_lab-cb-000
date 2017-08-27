class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to :root
    else
      session[:name] = params[:name]
      render 'new'
    end
  end

  def destroy
    session.delete(:name)
  end

end
