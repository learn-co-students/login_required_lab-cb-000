class SecretsController < ApplicationController
  before_action :require_logged_in

  def show
    render '/secret'
  end
end
