ActionController::Routing::Routes.draw do |map|
  map.resources :candidatos

  map.resources :eleitors

  map.resources :partidos

  map.resources :secaos

  map.resources :zonas

  map.resources :municipios

  map.resources :estados

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.resources :home

  map.root :controller => "home"

end

