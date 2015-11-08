require 'sinatra'

class MyWebApp < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  get '/madlib' do
    erb :madlib
  end
  
end
