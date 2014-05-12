require 'oj'
require 'entity'
require 'persistance_entity'
require 'persistance_json'
describe "Persistance entity" do

	subject(:text_type) {TextType.new}
	subject(:entity) {Entity.new(Attribute.new("Position","probando",text_type,Information::PUBLIC))}
	subject(:persistance){PersistanceEntity.new}

	it "basic persistance" do
		persistance.return_hash.should == {}
	end

	it "persistance add entity basic" do
		persistance.add_entity(entity)
		persistance.return_hash != {}
	end
	


end