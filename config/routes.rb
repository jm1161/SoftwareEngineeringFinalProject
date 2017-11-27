Rails.application.routes.draw do

  get 'cart/index'

  	devise_for :views
  	get '/', to: "home#index"
  	get '/buy_books/index', to: "buy_books#index"
  	get '/sell_books/index', to: "sell_books#index"

  	devise_for :users
  	get "/admin/index", to: "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
