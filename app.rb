require 'sinatra'
require 'giphy'

class GifBot < Sinatra::Base
GIPHY_KEY="dc6zaTOxFJmzC" # Public Beta Key

  get "/" do
    erb :index
  end

  post "/gif_search" do
    @search_query= params[:search][:gif_name]
    @result = Giphy.search(@search_query, {limit: 50, offset: 25})
    erb :index
  end
end
