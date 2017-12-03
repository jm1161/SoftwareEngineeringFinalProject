json.extract! book, :id, :title, :subtitle, :authors, :publisher, :publishDate, :description, :isbn10, :isbn13, :image, :created_at, :updated_at
json.url book_url(book, format: :json)
