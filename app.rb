require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
<<<<<<< HEAD
=======
      @secret = params[:item], params[:name]
>>>>>>> 72c697e1dfe58eaf1e04ca008c9b069082ac2929

    erb :index
  end

  post '/checkout' do
<<<<<<< HEAD
    @session = session
    session[:item] = params[:item]

=======
>>>>>>> 72c697e1dfe58eaf1e04ca008c9b069082ac2929

    erb :checkout
  end
end
