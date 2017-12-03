class HomeController < ApplicationController
	before_action :authenticate_user! , only: [:buy_books, :sell_books]


  def index
  end

  def buy_books
  end

  def sell_books
  end

  def support
  end

end
