class RemoteScalarArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "scalar_array"
  
  def self.sample_type
    :scalar
  end  
end
