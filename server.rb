require 'sinatra'
require 'httparty'

get '/' do
    erb :index 
end

get '/people' do
    @characters = HTTParty.get('http://swapi.dev/api/people/')
    erb :people   
end

get '/films' do
    @films = HTTParty.get('http://swapi.dev/api/films/')
    erb :films   
end

get '/planets' do
    @planets = HTTParty.get('http://swapi.dev/api/planets/')
    erb :planets   
end

get '/people/:id' do
    HTTParty.get("http://swapi.dev/api/people/#{params['id']}")
end

get '/planets/:id' do
    HTTParty.get("http://swapi.dev/api/planets/#{params['id']}")
end

get '/films/:id' do
    HTTParty.get("http://swapi.dev/api/films/#{params['id']}")
end

