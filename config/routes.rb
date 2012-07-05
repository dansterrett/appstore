Appstore::Engine.routes.draw do
  
  namespace :admin do
    resources :users
    resources :mobile_apps
  end

  mount Alohomora::Engine, at: "/", as: "alohomora"
  resources :welcome, only: [:index]
  root :to => 'welcome#index'
end
