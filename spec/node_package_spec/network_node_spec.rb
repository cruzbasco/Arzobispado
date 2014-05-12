require 'node_package/network_node'

describe "A network node" do
  context "starts with" do
    it "a main attribute" do
      text_type = TextType.new
      network_node = NetworkNode.new("Network","Parents",1)
      network_node.main_property.should == "Network"
      network_node.main_value.should == "Parents"
    end
    
    it "a key element" do
      network_node = NetworkNode.new("","", 1234)
      network_node.key_element.should == 1234
    end
    
  end
end