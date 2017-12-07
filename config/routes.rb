Rails.application.routes.draw do


 

#####################################################

	get '/', to: "home#index"
	get '/search', to: "home#search"
	get '/support', to: "home#support"

#####################################################	

	get "/admin/index", to: "admin#index"

#####################################################

	
	devise_for :views
  	devise_for :users
  
#####################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
