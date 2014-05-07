require 'attribute'

describe "An attribute" do
  
  subject(:attribute) {Attribute.new("","",String)}
  
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
  
  it "has a default constructor which set its attributes" do
    attribute = Attribute.new("property", "value", String)
    attribute.property.should == "property"
    attribute.value.should == "value"
    attribute.type.should == String
  end
  
end