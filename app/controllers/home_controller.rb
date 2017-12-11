class HomeController < ApplicationController
  before_action :find_book, only: [:want, :have]
  before_action :authenticate_user!, only: [:want, :have]

  def index
  end


   def search
   end

  #POST /searches
  def results

    input = params["search"]
    @results = Book.search(input)
  end

  def want
    matches = Want.all.where(book_id: @book.id, user_id: current_user.id)
    if matches.count == 0
      w = Want.new
      w.user_id = current_user.id
      w.book_id = @book.id
      w.save
    end
    @haves = Have.all.where(book_id: @book.id)

  end

  def have
    matches = Have.all.where(book_id: @book.id, user_id: current_user.id)
    if matches.count == 0
      h = Have.new
      h.user_id = current_user.id
      h.book_id = @book.id
      h.save
    end
    @wants = Want.all.where(book_id: @book.id)

  end

  def userLanding
   
    @wants = Want.all.where(user_id: current_user.id)     
      
  end
 
  private

  def find_book
    params.permit(:book_id)
    @book = Book.find(params[:book_id])
  end

  

   
    
  

  def support
  end


end
