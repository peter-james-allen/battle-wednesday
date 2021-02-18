# in app.rb

require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
      erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    session[:p1attack] = false
    redirect to('/play')
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb(:play)
    #@p1attack = false
  end

  post '/p1attack' do
    session[:p1attack] = true
    redirect to('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
#
# get '/secret' do
#   "Shhhhhhhhhhhh I'm hunting duckies"
# end
#
# get '/random-cat' do
#   @catname = %w(Amigo Misty Almond).sample
#   erb(:index)
# end
#
# post '/named-cat' do
#   p params
#   @catname = params[:name]
#   erb(:index)
# end
#
# get '/post-cat' do
#   # p params
#   # @catname = params[:name]
#   erb(:forms)
# end
#

#test comment
