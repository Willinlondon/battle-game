require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:Player1])
    player_2 = Player.new(params[:Player2])
    $battle = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $battle
    erb(:play)
  end

  get '/attack' do
    @game = $battle
    @game.attack(@game.player_2)
    erb(:attack)
  end

  run! if app_file == $0
end

