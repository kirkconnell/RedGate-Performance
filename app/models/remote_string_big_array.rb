class RemoteStringBigArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "string_big_array"
  
  def self.sample_type
    :string
  end
end
