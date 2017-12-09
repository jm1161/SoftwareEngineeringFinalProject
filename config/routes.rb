Rails.application.routes.draw do


 

 
#####################################################

	get '/', to: "home#index"
	get '/buy', to: "books#index"
	get '/sell', to: "books#new"
	get '/landing', to: "books#index"
	get '/user', to: "home#userLanding"
	get '/support', to: "home#support"

#####################################################	

	get "/admin/index", to: "admin#index"

#####################################################

	resources :books
	devise_for :views
  	devise_for :users
  
#####################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
