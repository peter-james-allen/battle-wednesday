# in app.rb

require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
      erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:name1], params[:name2])
    redirect to('/play')
  end

  get '/play' do
    @name1 = $game.player1.player_name
    @name2 = $game.player2.player_name
    @hp1 = $game.player1.hp
    @hp2 = $game.player2.hp
    @p1attacks = $game.p1attacks
    erb(:play)
  end

  post '/p1attack' do
    $game.attack($game.player2)
    redirect to('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
