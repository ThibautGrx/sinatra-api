require 'bundler/setup'
require 'sinatra/base'
require_relative 'movie'
require_relative 'director'

class Api < Sinatra::Base

	get '/hello' do
		'Hello world!'
	end

	get '/:resource' do
		resource = Object.const_get(params[:resource].chomp('s').capitalize)
		resource.all.to_json
	end

	get '/:resource/:id' do
		resource = Object.const_get(params[:resource].chomp('s').capitalize)
		resource.find(params[:id]).to_json
	end

end
