require "node_package/entity_type"

describe "An entity type" do
  
  subject(:attribute) {Attribute.new("property", "value", TextType.new, Information::PUBLIC)}
  subject(:entity_type) {EntityType.new(attribute)}
  
  it "has a main attribute" do
    entity_type.main_property.should == "property"
    entity_type.main_value.should == "value"
  end
  
  it "has an empty attributes" do
    entity_type.attributes.count.should == 0
  end
  
  it "could add many attributes as wish" do
    attribute_demo = Attribute.new("demo", "demo", TextType.new, Information::PUBLIC)
    entity_type.add_attribute(attribute_demo)
    entity_type.add_attribute(attribute_demo)
    entity_type.add_attribute(attribute_demo)
    entity_type.attributes.count.should == 3
  end
  
  it "could remove a specific attribute with object_id" do
    attribute_demo_a = Attribute.new("demo A", "demo A", TextType.new, Information::PUBLIC)
    attribute_demo_b = Attribute.new("demo B", "demo B", TextType.new, Information::PUBLIC)
    attribute_demo_c = Attribute.new("demo C", "demo C", TextType.new, Information::PUBLIC)
    entity_type.add_attribute(attribute_demo_a)
    entity_type.add_attribute(attribute_demo_b)
    entity_type.add_attribute(attribute_demo_c)
    entity_type.remove_attribute(attribute_demo_b.object_id)
    entity_type.attributes.count.should == 2
  end
  
  it "could search attributes" do
  end
  
end