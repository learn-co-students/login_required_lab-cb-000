class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to new_session_path
    end


  end

  def destroy
    binding.pry
    if !(current_user == nil)
      reset_session
    end
    redirect_to new_session_path
  end

end
