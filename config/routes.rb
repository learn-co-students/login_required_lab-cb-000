Rails.application.routes.draw do
  get '/', to: 'secrets#login'

end
