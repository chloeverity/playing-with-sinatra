require 'sinatra'
require 'shotgun'

get '/' do
  'hello!'
end

get '/bye' do
  'bye!'
end

get '/secret' do
  'secret message'
end

get '/random-cat' do
  @name = ["Janice", "Sean", "Fred", "Ellie"].sample
  erb :index
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

set :session_secret, 'super secret'
