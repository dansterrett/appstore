Appstore::Engine.routes.draw do
  mount Alohomora::Engine, at: "/", as: "alohomora"
  resources :welcome, only: [:index]
  root :to => 'welcome#index'
end
