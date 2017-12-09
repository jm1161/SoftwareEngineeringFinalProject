Rails.application.routes.draw do

  get 'support/index'

<<<<<<< HEAD
 

	get '/', to: "home#index"
	get '/search', to: "home#search"
	get '/support', to: "home#support"
	
	get "/admin/index", to: "admin#index"

<<<<<<< HEAD
#####################################################

	
	devise_for :views
  	devise_for :users
  
#####################################################
=======
  get 'cart/index'

  	devise_for :views
  	get '/', to: "home#index"
  	get '/buy_books/index', to: "buy_books#index"
  	get '/sell_books/index', to: "sell_books#index"

  	devise_for :users
  	get "/admin/index", to: "admin#index"
>>>>>>> parent of 8c074f0... code cleanup, removed extra controllers
=======
	devise_for :views
  	devise_for :users
  
>>>>>>> parent of f4b2927... created books scaffold
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
