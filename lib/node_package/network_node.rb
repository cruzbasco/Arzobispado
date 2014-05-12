class NetworkNode
  
  attr_reader :key_element
  
  def initialize (property, value, key_element)
    @main_attribute = Attribute.new(property, value, TextType.new, Information::PRIVATE)
    @key_element = key_element
  end
  
  def main_property
    @main_attribute.property
  end
  
  def main_value
    @main_attribute.value
  end
  
  
  
end