class RemoteScalarBigArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "scalar_big_array"
  
  def self.sample_type
    :scalar
  end  
end
