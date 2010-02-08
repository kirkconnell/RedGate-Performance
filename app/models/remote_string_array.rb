class RemoteStringArray < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "string_array"
  
  def self.sample_type
    :string
  end
end
