class SessionsController < ApplicationController

def create
  session[:name] = params[:name]
  logged_in? and return
  redirect_to '/'

end

def destroy
  session.delete :name
  logged_in?


end

end
