class SecretsController < ActionController::Base

  before_action :require_login

    def show
      render '/secrets/show'
    end

private

def require_login
 redirect_to :root unless session.include?(:name)
end



end
