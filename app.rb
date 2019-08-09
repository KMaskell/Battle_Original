require 'sinatra/base'
#require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'
#set :session_secret, 'super secret'

class Battle < Sinatra::Base
  enable :sessions
  # register Sinatra::Reloader
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_one_name])
    player_2 = Player.new(params[:player_two_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/attack' do
    # @player_1 = $player1
    # @player_2 = $player2
    # @game.attack(@player_2)
    # Game.new.attack(@player_2)
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end

  get '/play' do
    @game = $game
    # @player_1_name = $player1.name
    # @player_2_name = $player2.name
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  set :session_secret, "You gonna bark all day little doggy"
end
