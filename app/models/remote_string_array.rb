class RemoteStringArrayMessage < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.prefix = "/gates/"
  self.element_name = "string_array"
end
