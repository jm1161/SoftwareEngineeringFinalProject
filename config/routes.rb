Rails.application.routes.draw do


  get 'search/index'

#####################################################

	get '/', to: "home#index"
	get '/buy_books', to: "home#buy_books"
	get '/sell_books', to: "home#sell_books"
	get '/support', to: "home#support"

#####################################################	

	get "/admin/index", to: "admin#index"

#####################################################

	
	devise_for :views
  	devise_for :users
  
#####################################################
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
