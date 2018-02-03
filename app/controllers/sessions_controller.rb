class SessionsController < ApplicationController

  def index
  end

  def create
    if !params[:name].nil? && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to sessions_path
    else
      redirect_to login_path
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
