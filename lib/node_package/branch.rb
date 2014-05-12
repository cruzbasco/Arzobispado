require 'node_package/related'

class Branch
  
  attr_reader :node_key, :network_key
  
  def initialize (node_key,related,network_key)
    @node_key = node_key
    @related = related
    @network_key = network_key
  end
  
  def is_related?
    @related
  end
  
end