require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello!'
end

get '/secret' do
  'We meet again'
end

get '/named-cat' do
  p params
  params[:name] == nil or params = "" ? @name = "Dave" : @name = params[:name]
  erb (:index)
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb (:index)
end
