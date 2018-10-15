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

get '/cat' do
  @name = ["Janice", "Sean", "Fred", "Ellie"].sample
  erb :index
end

set :session_secret, 'super secret'
