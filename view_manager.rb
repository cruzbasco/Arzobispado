require './gemas'
require 'sinatra'

get '/' do
	erb :"index"
end

get '/create'do
	erb :"create"
end

post '/create_entity'do

	@entity=PersistanceJSON.new("sacerdote")
	@cura=Entity.new(Attribute.new("sacerdote",params[:nombre],TextType.new,Information::PUBLIC))
	@entity.save_entity(@cura)
	erb :"index"
end