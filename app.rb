require_relative 'config/environment'
requre_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb: user_input
  end
end