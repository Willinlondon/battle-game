require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player.rb'


class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name 
    @player_2 = $player_2.name
    @point1 = $player_1.hp
    @point2 = $player_2.hp
    erb(:play)
  end

  # post '/play' do
  #   redirect '/attack'
  # end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_1.attack($player_2)
    @point1 = $player_1.hp
    @point2 = $player_2.hp
    erb(:attack)
  end

  run! if app_file == $0
end

