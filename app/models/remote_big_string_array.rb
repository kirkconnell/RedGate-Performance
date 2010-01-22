class RemoteBigStringArrayMessage < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.prefix = "/gates/"
  self.element_name = "big_string_array"
end
