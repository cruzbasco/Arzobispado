require 'entity'

describe "An entity" do
  
  subject(:entity) {Entity.new}
  
  context "starts with" do
    it "an empty primary attribute" do
      entity.main_property.should == ""
      entity.main_value.should == ""
      entity.main_type.should == String
    end
    
    it "empty attributes" do
      entity.attributes.should == []
    end
  end
  
  context "with attributes" do
    it "isn't empty if has attributes" do
      entity.add_attribute(Attribute.new)
      entity.attributes.should_not == []
    end
    
    it "is empty when add and remove attribute" do
      attribute = Attribute.new
      entity.add_attribute(attribute)
      entity.remove_attribute(attribute)
      entity.attributes.should == []
    end
  end
  
end