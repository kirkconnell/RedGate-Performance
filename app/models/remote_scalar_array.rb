class RemoteScalarArrayMessage < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.prefix = "/gates/"
  self.element_name = "scalar_array"
end
