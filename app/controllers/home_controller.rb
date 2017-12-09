class HomeController < ApplicationController
	before_action :authenticate_user! , only: [:buy_books, :sell_books]


  def index
  end

 def search
 end

  def support
  end

end
