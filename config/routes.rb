Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users do
  	resources :cars
  end
  devise_for :cars
  resources :cars
	match ':controller(/:action(/:id))(.:format)'
end