require 'sinatra/base'
require_relative 'lib/board'
require_relative 'lib/ship'
require_relative 'lib/water'
require_relative 'lib/cell'
require_relative 'lib/game'
require_relative 'lib/player'

class BattleShips < Sinatra::Base

  enable :sessions

  game = Game.new

  get '/' do
    erb :index
  end

  get '/new_game' do
    @player = session[:me]
    erb :new_game
  end

  post '/new_game' do
    name = params[:name]
    player = Player.new
    player.name = params[:name]
    player.board = Board.new(Cell)
    game.add_player(player)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
