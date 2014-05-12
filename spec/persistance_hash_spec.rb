require 'persistance_hash'
require 'persistance_entity'
describe "describe persistance hashes" do 

	subject(:persistance_hashes){PersistanceHash.new}
	subject(:persistance){PersistanceEntity.new}
	it "hashes add hash" do
		persistance_hashes.add_hash(persistance)
		persistance_hashes.return_hashes!={}
	end

end