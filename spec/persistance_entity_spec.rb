require 'compose_entity'
require 'basic_entity'
require 'persistance_entity'
describe "Persistance entity" do

	subject(:text_type) {TextType.new}
	subject(:entity) {BasicEntity.new(Attribute.new("Position","probando",text_type,Information::PUBLIC))}
	subject(:compose_entity) {ComposeEntity.new}
	subject(:persistance){PersistanceEntity.new}

	it "basic persistance" do
		persistance.return_hash.should=={}
	end

	it "persistance add entity basic" do
		persistance.add_entity(entity)
		persistance.return_hash!={}
	end
	it "persistance add entity compose" do
		persistance.add_entity(compose_entity)
		persistance.return_hash!={}
	end
	


end