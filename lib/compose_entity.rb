class ComposeEntity
  
  attr_reader :entities
  
  def initialize
    super (Attribute.new("","",TextType.new,Information::PUBLIC))
    @entities = []
  end
  
  def add_entity (entity)
    @entities.push(entity)
  end
  
  def remove_entity (entity_id)
    @entities.delete_if{|e| e.object_id == entity_id}
  end
  
  def search_entity (data)
    @entities.select{|entity| entity.main_value == data}
  end

  def get_base_entity
    entity =Entity.new(@main_attribute)
    entity.set_attributes(@attributes, @visible)
    entity
  end
  
end