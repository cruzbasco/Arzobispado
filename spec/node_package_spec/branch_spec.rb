require 'node_package/branch'

describe "A branch"do
  context "has 2 kind of relation" do
    it "one should be CREATION" do
      branch = Branch.new(Related::CREATION)
      branch.is_related?.should == true
    end
    
    it "one should be RELATION" do
      branch = Branch.new(Related::RELATION)
      branch.is_related?.should == false
    end
  end
end