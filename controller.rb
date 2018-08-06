require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game')
also_reload('./models/*')

get '/game/:player1/:player2' do
  game = Game.new(params[:player1].downcase(), params[:player2].downcase())
  @outcome = game.play()
  erb(:result)
end

get '/welcome' do
  erb(:welcome)
end
