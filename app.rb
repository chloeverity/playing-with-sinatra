require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'secret message'
end

get '/cat' do
  erb(:index)
end

set :session_secret, 'super secret'
