class PersistanceHash
	def initialize
		@archive = PersistanceJSON.new("hashes")
		@hashes = Hash.new
	end

	def return_hashes
		@hashes		
	end

	def add_hash(hash)
		@hashes[:hash.object_id] = hash
		save_entity_json(hash)
	end

	#non TDD method
	def save_entity_json(entity)
		@archive.save_entity(entity)
	end


end