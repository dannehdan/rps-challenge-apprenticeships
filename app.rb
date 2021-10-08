require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game_result'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1_name])
    redirect to('/choose-your-weapon')
  end

  get '/choose-your-weapon' do
    erb :play
  end

  post '/result' do
    @user_choice = params[:user_choice]
    @game_choice = ["Rock", "Paper", "Scissors"].sample
    @result = GameResult.new(@user_choice, @game_choice)
    erb :result
  end

  run! if app_file == $0
end
