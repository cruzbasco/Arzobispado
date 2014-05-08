class ComposeEntity < BasicEntity
  
  attr_reader :entities
  
  def initialize
    super
    @entities = []
  end
  
  def add_entity (entity)
    @entities.push(entity)
  end
  
  def remove_entity (entity_id)
    @entities.delete_if{|e| e.object_id == entity_id}
  end
  
end