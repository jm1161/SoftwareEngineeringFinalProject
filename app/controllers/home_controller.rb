class HomeController < ApplicationController
	before_action :authenticate_user! , only: [:buy_book, :sell_book]


  def index
  end

  def buy_book
  end

  def sell_book
  end

  def userLanding
  end

  def support
  end


end
