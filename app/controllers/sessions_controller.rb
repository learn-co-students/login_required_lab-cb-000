class SessionsController < ActionController::Base

 def new
 end

  def create
  return redirect_to(controller: 'sessions',
  action: 'new') if !params[:name] || params[:name].empty?  # redirects to login page if :name is nil
  session[:name] = params[:name]    # sets session[:name] if :name was given
  redirect_to controller: 'application', action: 'hello' # redirects to login page if :name is empty
  end

  def destroy
  session.delete :name  # leaves session[:name] nil if it was not set
  redirect_to controller: 'application', action: 'hello'  # clears session[:name] if it was set
  end

end
