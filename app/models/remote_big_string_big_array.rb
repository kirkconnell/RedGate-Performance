class RemoteBigStringBigArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "big_string_big_array"
  
  def self.sample_type
    :big_string
  end
end
