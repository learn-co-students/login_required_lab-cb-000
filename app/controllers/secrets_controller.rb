class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:show]

 def require_login
  return head(:forbidden) unless session.include? :user_name
 end

 def show
   logged_in?
end


end
