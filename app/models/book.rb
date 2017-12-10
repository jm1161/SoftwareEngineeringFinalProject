class Book < ApplicationRecord
validates_uniqueness_of :asin


	def self.new_from_hash(item_hash)
		new_product = Book.new
		begin

		new_product.brand = item_hash["ItemAttributes"]["Brand"]
		new_product.name = item_hash["ItemAttributes"]["Title"]
		new_product.price = item_hash["ItemAttributes"]["ListPrice"]["FormattedPrice"]
		new_product.url = item_hash["DetailPageURL"]
		new_product.image = item_hash["SmallImage"]["URL"]
		new_product.asin = item_hash["ASIN"]

		rescue

		end
		return new_product
	end
	

	def self.search(phrase)
		api = AmazonAPI.new
		url = api.by_keyword(phrase)
		results = HTTParty.get(url)

		products = [] 
		items = results["ItemSearchResponse"]["Items"]["Item"]

		begin 
		items.each do | item |
			book =  Book.new_from_hash(item)
			if !book.save
				book = Book.find_by_asin(book.asin)
			end
			
			products << book
		end
		rescue
		end
		return products
	end

end
