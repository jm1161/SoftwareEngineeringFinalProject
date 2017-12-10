Rails.application.routes.draw do


 

 
  resources :books
#####################################################

	get '/', to: "home#index"
	get '/search', to: "home#search"
	get '/want', to: "home#want"
	get '/have', to: "home#have"
	get '/user', to: "home#userLanding"
	get '/support', to: "home#support"
	post '/results', to: "home#results"
#####################################################	

	get "/admin/index", to: "admin#index"

#####################################################

	resources :books
	devise_for :views
  	devise_for :users
  
#####################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
