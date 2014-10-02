require 'sinatra'

class GifBot < Sinatra::Base
GIPHY_KEY="dc6zaTOxFJmzC" # Public Beta Key

  get "/" do
    erb :index
  end
end
