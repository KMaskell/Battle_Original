require 'sinatra/base'
#require 'sinatra/reloader'
require './lib/player.rb'
#set :session_secret, 'super secret'

class Battle < Sinatra::Base
  enable :sessions
  # register Sinatra::Reloader
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player1
    @player_2 = $player2
    @player_1.attack(@player_2)
    erb :attack
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  set :session_secret, "here be dragons"

end
