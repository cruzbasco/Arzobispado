require './gemas'
require 'sinatra'

get '/' do
	erb :"index"
end

get '/create'do
	nombre=Attribute.new("nombre","",TextType.new,Information::PUBLIC)
	apellido=Attribute.new("apellido","",TextType.new,Information::PUBLIC)
	sueldo=Attribute.new("sueldo","",NumericType.new,Information::PUBLIC)
	@cura=Entity.new(Attribute.new("cargo","sacerdote",TextType.new,Information::PUBLIC))
	@cura.add_attribute(nombre)
	@cura.add_attribute(apellido)
	@cura.add_attribute(sueldo)
	erb :"create"
end

post '/create_entity'do	
	@cura=Entity.new(Attribute.new("cargo","sacerdote",TextType.new,Information::PUBLIC))
	nombre=Attribute.new("nombre",params[:nombre],TextType.new,Information::PUBLIC)
	apellido=Attribute.new("apellido",params[:apellido],TextType.new,Information::PUBLIC)
	sueldo=Attribute.new("sueldo",params[:sueldo],NumericType.new,Information::PUBLIC)
	@cura.add_attribute(nombre)
	@cura.add_attribute(apellido)
	@cura.add_attribute(sueldo)
	@entity=PersistanceEntity.new
	@entity.add_entity(@cura)
	erb :"index"
end