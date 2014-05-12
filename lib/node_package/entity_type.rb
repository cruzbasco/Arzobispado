class EntityType
  
  attr_reader :attributes
  
  def initialize (main_attribute)
    @main_attribute = main_attribute
    @attributes = []
  end
  
  def main_property
    @main_attribute.property
  end
  
  def main_value
    @main_attribute.value
  end
  
  def add_attribute (attribute)
    @attributes.push(attribute)
  end
  
  def remove_attribute (attribute_id)
    @attributes.delete_if{|attribute| attribute.object_id == attribute_id}
  end
  
  
  
end