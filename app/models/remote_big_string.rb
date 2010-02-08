class RemoteBigString < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "big_string"
  
  def self.sample_type
    :big_string
  end
end
