require 'node_package/node'

describe "A node" do
  
  subject(:node) {Node.new(1234,9876)}
  
  context "starts with" do
    it "with an entity_id" do
      node.entity_id.should == 1234
    end
    
    it "with an entity_hash" do
      node.entity_hash.should == 9876
    end
    
    it "with an empty parents" do
      node.parents.count.should == 0
    end
    
    it "with an empty children" do
      node.children.count.should == 0
    end
  end
end