require 'sinatra'
require 'cheapshark'

class SearchGames < Sinatra::Base
  get '/' do
    @games = CheapShark.games(title: params['title'] || ' ')
    erb :home
  end

end
