json.extract! book, :id, :brand, :name, :price, :url, :image, :asin, :created_at, :updated_at
json.url book_url(book, format: :json)
