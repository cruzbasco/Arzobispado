require 'compose_entity'
require 'basic_entity'

describe "A compose entity" do
  
  subject(:compose_entity) {ComposeEntity.new}
  
  it "is a basic entity" do
    compose_entity.attributes.should == []
    compose_entity.is_visible?.should == true
  end
  
  context "with entities" do
    it "has no data if its new" do
      compose_entity.entities.should == []
    end
    
    it "could add many entities as it needed" do
      compose_entity.add_entity(BasicEntity.new(Attribute.new("Position","",TextType.new,Information::PUBLIC)))
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.add_entity(BasicEntity.new(Attribute.new("Position","",TextType.new,Information::PUBLIC)))
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.entities.count.should == 4
    end
    
    it "could remove many entities as it needed" do
      entity_demo = BasicEntity.new(Attribute.new("Position","",TextType.new,Information::PUBLIC))
      compose_entity.add_entity(entity_demo)
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.add_entity(BasicEntity.new(Attribute.new("Position","",TextType.new,Information::PUBLIC)))
      compose_entity.remove_entity(entity_demo.object_id)
      compose_entity.entities.count.should == 2
    end
    
    it "could search an specific entity" do
      entity_demo = BasicEntity.new(Attribute.new("Position","search_it",TextType.new,Information::PRIVATE))
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.add_entity(entity_demo)
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.search_entity("search_it").count.should > 0
    end
  end
end