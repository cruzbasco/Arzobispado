class Attribute
  
  attr_reader :property, :value, :type
  
  def initialize
    @property = ""
    @value = ""
    @type = String
  end
  
  def add_property (property)
    @property = property
  end
  
  def add_value (value)
    @value = value
  end
  
  def add_type (type)
    @type = type
  end
  
end