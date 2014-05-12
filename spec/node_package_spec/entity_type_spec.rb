require "node_package/entity_type"

describe "An entity type" do
  it "has a main attribute" do
    entity_type = EntityType.new(Attribute.new("property", "value", TextType.new, Information::PUBLIC))
    entity_type.main_property.should == "property"
    entity_type.main_value.should == "value"
  end
end