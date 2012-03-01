require 'sinatra'
require 'haml'
require 'vagrant'

get '/' do
  @title = "Index Page"
  haml :index
end

get '/shutdown' do
  @title = "Shutting Down..."
  haml :shutdown
  `vagrant halt`
end

get '/startup' do
  @title = "Starting up..."
  haml :startup
  `vagrant up`
end

get '/suspend' do
  @title = "Suspending VM..."
  haml :suspend
  `vagrant suspend`
end

