# in app.rb

require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
      erb(:index)
  end

  post '/names' do

    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])

    # session[:name1] = params[:name1]
    # session[:name2] = params[:name2]
    session[:p1attack] = false
    redirect to('/play')
  end

  get '/play' do
    @name1 = $player1.player_name
    @name2 = $player2.player_name
    @hp1 = $player1.hp
    @hp2 = $player2.hp
    erb(:play)
    #@p1attack = false
  end

  post '/p1attack' do
    session[:p1attack] = true
    $player2.is_attacked
    redirect to('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
