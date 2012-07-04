Appstore::Engine.routes.draw do
  
  match "/mobile_apps/gallery" => "mobile_apps#gallery"
  resources :mobile_apps

  mount Alohomora::Engine, at: "/", as: "alohomora"
  resources :welcome, only: [:index]
  root :to => 'welcome#index'
end
