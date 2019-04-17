  
require 'sinatra'
class App < Sinatra::Base
  cofigure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #turns cookies on
    enable :sessions
  end
  get '/' do
    "Welcome"
  end

end