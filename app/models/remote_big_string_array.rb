class RemoteBigStringArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.prefix = "/gates/"
  self.element_name = "big_string_array"
  
  def self.sample_type
    :big_string
  end
end
