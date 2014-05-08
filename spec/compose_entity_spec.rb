require 'compose_entity'
require 'basic_entity'

describe "A compose entity" do
  it "is a basic entity" do
    compose_entity = ComposeEntity.new
    compose_entity.attributes.should == []
    compose_entity.main_property.should == "Cargo"
  end
  
  context "with entities" do
    it "has no data if its new" do
      compose_entity = ComposeEntity.new
      compose_entity.entities.should == []
    end
    
    it "could add many entities as it needed" do
      compose_entity = ComposeEntity.new
      compose_entity.add_entity(BasicEntity.new)
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.add_entity(BasicEntity.new)
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.entities.count.should == 4
    end
    
    it "could remove many entities as it needed" do
      compose_entity = ComposeEntity.new
      entity_demo_a = BasicEntity.new
      compose_entity.add_entity(entity_demo_a)
      compose_entity.add_entity(ComposeEntity.new)
      compose_entity.add_entity(BasicEntity.new)
      compose_entity.remove_entity(entity_demo_a.object_id)
      compose_entity.entities.count.should == 2
    end
  end
end