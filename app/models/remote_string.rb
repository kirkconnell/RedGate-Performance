class RemoteString < ActiveResource::Base
  self.site = RESOURCE_CONFIG[:site]
  self.element_name = "string"
  
  def self.sample_type
    :string
  end  
end
