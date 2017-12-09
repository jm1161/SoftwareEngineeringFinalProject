json.extract! book, :id, :title, :subtitle, :author, :edition, :isbn, :price, :condition, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
