class SecretsController < ApplicationController
  def show
    require_login
    print "BAM!!! There's your secret, #{current_user}."
  end
 
end

