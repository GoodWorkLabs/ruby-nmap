require 'nmap/cpe'
module Nmap
  #
  # Represents an {OS} class.
  #
  class OsPortUsed
    include CPE

    #
    # Initializes the os class.
    #
    # @param [Nokogiri::XML::Node] node
    #   The node that contains the OS Class information.
    #
    def initialize(node)
      @node = node
    end
    
    #
    # The OS state.
    #
    # @return [String]
    #
    def state
      @state ||= @node.get_attribute('state')
    end
    
    #
    # The OS proto.
    #
    # @return [String]
    #
    def proto
      @proto ||= @node.get_attribute('proto')
    end
    
    #
    # The OS portid.
    #
    # @return [String]
    #
    def portid
      @portid ||= @node.get_attribute('portid')
    end
    
    #
    # Converts the Os Port Used to a String.
    #
    # @return [String]
    #   The String form of the Os Port Used.
    #
    def to_s
      "#{self.state} #{self.proto} (#{self.portid}%)"
    end
    
    #
    # Converts the Os Port Used to a JSON.
    #
    # @return [String]
    #   The String form of the Os Port Used.
    #
    def to_s
      "{'state': '#{self.state}', 'proto': '#{self.proto}', 'portid': '#{self.portid}}'"
    end
    
  end
end
