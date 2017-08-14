class SessionsController < ApplicationController

    def index
    end

    def new
    end

    def create

      if params[:name].present? && !params[:name].empty?
        session[:name] = params[:name]
        render "sessions/index"
      else
      redirect_to '/sessions/new'
      end
    end

    def edit
    end

    def update
    end

    def show
      render 'sessions/login'
    end
    def destroy
      log_out
      redirect_to root_url
    end
private

  def log_out
    session.delete(:name)

  end

end
