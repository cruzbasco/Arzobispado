class BasicEntity
  
  attr_reader :attributes
    
  def initialize 
    @main_attribute = Attribute.new("Cargo","",String)
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
  
  def change_primary_attribute (property, value, type)
    @main_attribute = Attribute.new(property,value,type)
  end
  
  def add_attribute (attribute)
    @attributes.push(attribute)
  end
  
  def remove_attribute (attribute_id)
    @attributes.delete_if{|a| a.object_id == attribute_id}
  end
  
  def search_attribute (data)
    @attributes.select{|a| a.property == data || a.value == data}.first
  end
  
end