require 'Oj'
class PersistanceJSON

	def initialize(archivo)
		@archivo = File.open("./data"+archivo+".json","a")
	end
	
	def save_entity(entity)
		File.open(@archivo, "a") do |file|
     				 file.puts(Oj::dump entity)
				end
	end
	
end