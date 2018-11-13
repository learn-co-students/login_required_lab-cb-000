module SessionsHelper
  def logged_in?
    !!current_user
  end
end
