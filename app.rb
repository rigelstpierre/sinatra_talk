require 'sinatra'

class GifBot < Sinatra::Base
GIPHY_KEY="dc6zaTOxFJmzC" # Public Beta Key

  get "/" do
    erb :index
  end

  post "/gif_search" do
    search= params[:search]
    Giphy.search(search, {limit: 50, offset: 25})
  end
end
