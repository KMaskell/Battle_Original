require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_one_name])
    $player2 = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player1.name
    @player_two_name = $player2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player1
    @player_2 = $player2
    @player_1.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
