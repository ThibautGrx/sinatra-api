require 'bundler/setup'
require 'sinatra/base'

class Api < Sinatra::Base

	get '/hello' do
		'Hello world!'
	end

end
