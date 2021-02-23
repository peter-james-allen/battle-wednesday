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
    @game = $game
    erb(:play)
  end

  post '/p1attack' do
    $game.attack($game.player2)
    redirect to('/play')
  end

  post '/p2attack' do
    $game.attack($game.player1)
    redirect to('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
