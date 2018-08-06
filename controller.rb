require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1].downcase(), params[:hand2].downcase())
  @outcome = game.play()
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
