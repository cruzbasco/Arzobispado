class EntityType
  
  def initialize (main_attribute)
    @main_attribute = main_attribute
  end
  
  def main_property
    @main_attribute.property
  end
  
  def main_value
    @main_attribute.value
  end
  
end