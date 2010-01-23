class RemoteScalar < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.prefix = "/gates/"
  self.element_name = "scalar"
  
  def self.sample_type
    :scalar
  end
end
