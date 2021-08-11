require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player_1 = params[:Player1]
    @player_2 = params[:Player2]
    erb(:play)
  end

  run! if app_file == $0
end

