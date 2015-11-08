require 'sinatra'
require 'cat_api'

class CatIndustriesApp < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/cats' do
    @pictures = CatAPI.new.get_images(category: 'hats', results_per_page: 100)
    erb :cats
  end

end
