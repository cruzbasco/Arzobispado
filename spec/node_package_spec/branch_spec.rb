require 'node_package/branch'

describe "A branch"do
  context "has 2 kind of relation" do
    it "one should be CREATION" do
      branch = Branch.new(1,Related::CREATION,1)
      branch.is_related?.should == true
    end
    
    it "one should be RELATION" do
      branch = Branch.new(1,Related::RELATION,1)
      branch.is_related?.should == false
    end
  end
  
  it "has a node key" do
    branch = Branch.new(12345,Related::CREATION,1)
    branch.node_key.should == 12345
  end
  
  it "has a network key" do
    branch = Branch.new(1,Related::CREATION, 12345)
    branch.network_key.should == 12345
  end
  
  
end