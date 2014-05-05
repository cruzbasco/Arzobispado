require 'attribute'

describe "An attribute" do
  
  subject(:attribute) {Attribute.new}
  
  it "has a property" do
    attribute.add_property("sample")
    attribute.property.should == "sample"
  end
  
  it "has a value" do
    attribute.add_value("sample")
    attribute.value.should == "sample"
  end
  
  it "has a type like String" do
    attribute.add_type(String)
    attribute.type.should == String
  end
  
  it "has a type like Integer" do
    attribute.add_type(Integer)
    attribute.type.should == Integer
  end
  
  it "should be created with non info and String type" do
    attribute.property.should == ""
    attribute.value.should == ""
    attribute.type.should == String
  end
  
end