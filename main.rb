require 'sinatra'
require 'haml'
require 'vagrant'

get '/' do
  @title = "Index Page"
  haml :index
end

get '/shutdown/:name' do
  params[:name]
  @title = "Shutting Down..."
  haml :shutdown
  `vagrant halt #{params[:name]}`
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

get '/init' do
  @title = "Initializing VM..."
  haml :init
  `vagrant init`
end

