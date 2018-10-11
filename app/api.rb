require 'bundler/setup'
require 'sinatra/base'
require_relative 'movie'

class Api < Sinatra::Base

	get '/hello' do
		'Hello world!'
	end

	get '/movies' do
		Movie.all.to_json
	end

	get '/movies/:id' do
		Movie.find(params[:id]).to_json
	end

end
