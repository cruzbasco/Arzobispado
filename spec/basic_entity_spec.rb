require 'basic_entity'

describe "An entity" do
  
  subject(:entity) {BasicEntity.new}
  subject(:attribute) {Attribute.new("","",String)}
  
  context "starts with" do
    it "an empty primary attribute" do
      entity.main_property.should == "Cargo"
      entity.main_value.should == ""
      entity.main_type.should == String
    end
    
    it "empty attributes" do
      entity.attributes.should == []
    end
    
    it "could modify its own primary attribute" do
      entity.change_primary_attribute("cambio","cambio",Integer)
      entity.main_property.should == "cambio"
      entity.main_value.should == "cambio"
      entity.main_type.should == Integer
    end
  end
  
  context "with attributes" do
    it "isn't empty if has attributes" do
      entity.add_attribute(attribute)
      entity.attributes.should_not == []
    end
    
    it "is empty when add and remove attribute" do
      entity.add_attribute(attribute)
      entity.remove_attribute(attribute.object_id)
      entity.attributes.should == []
    end
    
    it "returns all of its attributes"do
      entity.add_attribute(attribute)
      entity.add_attribute(attribute)
      entity.attributes.count.should == 2
    end
    
    it "an attribute can be searched by property" do
      entity.add_attribute(attribute)
      entity.add_attribute(Attribute.new("buscar aqui","",String))
      entity.add_attribute(attribute)
      entity.search_attribute("buscar aqui").property.should == "buscar aqui"
    end
    
    it "an attribute can be searched by value" do
      entity.add_attribute(attribute)
      entity.add_attribute(Attribute.new("","buscar aqui",String))
      entity.add_attribute(attribute)  
      entity.search_attribute("buscar aqui").value.should == "buscar aqui"
    end
    
  end
  
end