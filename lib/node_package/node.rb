class Node
  
  attr_reader :entity_id, :entity_hash, :parents, :children
  
  def initialize (entity_id, entity_hash)
    @entity_id = entity_id
    @entity_hash = entity_hash
    @parents = []
    @children = []
  end
  
end