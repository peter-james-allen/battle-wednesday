# in app.rb

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
      # p params
      # @catname = params[:name]
      erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:play)
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
