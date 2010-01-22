ActionController::Routing::Routes.draw do |map|
  map.resources :scalar_messages
  map.resources :string_messages
  map.resources :big_string_messages
  
  map.resources :scalar_array_messages
  map.resources :string_array_messages
  map.resources :big_string_array_messages
  
  map.resources :scalar_big_array_messages
  map.resources :string_big_array_messages
  map.resources :big_string_big_array_messages

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
