require 'sinatra'
require 'haml'
require 'vagrant'

get '/' do
  @title = "Index Page"
  haml :index
end

