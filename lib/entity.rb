class Entity
  
  attr_reader :attributes
    
  def initialize 
    @main_attribute = Attribute.new
    @attributes = []
  end
  
  def main_property
    @main_attribute.property
  end
  
  def main_value
    @main_attribute.value
  end
  
  def main_type
    @main_attribute.type
  end
  
  def add_attribute (attribute)
    @attributes.push(attribute)
  end
  
  def remove_attribute (attribute)
    @attributes.delete_if{|a| a.object_id == attribute.object_id}
  end
  
end