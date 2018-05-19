Rails.application.routes.draw do
	
	get "/lists/search" => 'lists#search'
	post "/lists/search" => 'lists#search', as: "search"

  resources :users
	resources :lists 


	resources :users 
	resources :galleries
	delete "/sign_out" => "sessions#destroy", as: "sign_out"
	get "/sign_in" => "sessions#new"
	post "/sign_in" => "sessions#create"
	get "/auth/:provider/callback" => "sessions#create_from_omniauth"
	resources :welcome
	root :to => "welcome#index"

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end