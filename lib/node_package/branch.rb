require 'node_package/related'

class Branch
  
  def initialize (related)
    @related = related
  end
  
  def is_related?
    @related
  end
  
end