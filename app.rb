require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do

      # @secret = params[:item]


    erb :index
  end

  post '/checkout' do

    @session = session
    session[:item] = params[:item]

    erb :checkout
  end
end
