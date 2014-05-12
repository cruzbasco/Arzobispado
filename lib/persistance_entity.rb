require 'Oj'
require 'persistance_json'
class PersistanceEntity
	attr_reader :hash

	def initialize
		@archive = 1
		@hash = Hash.new
	end

	def return_hash
		@hash
	end

	def add_entity(entity)
		entity.clear_entities
		@hash[ :entity.object_id] = entity
		save_entity_json(entity)
	end

	private

	def save_entity_json(entity)
		@archive = PersistanceJSON.new(entity.main_value.to_s)
		@archive.save_entity(entity)
	end

end