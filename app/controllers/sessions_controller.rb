class SessionsController < ApplicationController


  def new
    end

    def create
      return redirect_to(controller: 'sessions',
                         action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end

    def destroy
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    end


  private



end


# describe 'create' do
#   it 'redirects to login page if :name is nil' do
#     post :create
#     expect(response).to redirect_to controller: 'sessions', action: 'new'
#   end
#
#   it 'redirects to login page if :name is empty' do
#     post :create, name: ''
#     expect(response).to redirect_to controller: 'sessions', action: 'new'
#   end
#
#   it 'sets session[:name] if :name was given' do
#     me = 'Werner Brandes'
#     post :create, name: me
#     expect(@request.session[:name]).to eq me
#   end
# end
