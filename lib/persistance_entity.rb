require 'compose_entity'
require 'basic_entity'
require 'Oj'
class PersistanceEntity
	attr_reader :hash

	def initialize
		@hash = Hash.new
	end

	def return_hash
		@hash
	end

	def add_entity(entity)
		entity=separate(entity)
		@hash[ :entity.object_id]=entity
		save_entity_basic_json(entity)
	end

	private
	def separate(compose_entity)
		if(compose_entity.class==ComposeEntity)
			compose_entity=compose_entity.get_base_entity
		end
			compose_entity
	end

	def save_entity_basic_json(entity)
				File.open(entity.main_value+".json" ,"a") do |file|
     				 file.puts(Oj::dump entity)
				end

	end
end