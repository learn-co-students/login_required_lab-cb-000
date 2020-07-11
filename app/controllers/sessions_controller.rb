class SessionsController < ApplicationController
    
  def new
  end 
  
  def create
    if params[:name].blank? 
      redirect_to root_path
    else 
      session[:name] = params[:name]
  
    end   
  end

  
  def destroy
    session.delete :name
    redirect_to root_path
  end
  
end 