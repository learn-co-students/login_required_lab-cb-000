class SecretsController < ActionController::Base
  before_action :require_logged_in


  def show
    # should redirect to login if you're not logged in (FAILED - 3)
    # should show you the secret if you're logged in (FAILED - 4)
  end

end
