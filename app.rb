require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "1234"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    @session = session
    erb :index
  end
end
