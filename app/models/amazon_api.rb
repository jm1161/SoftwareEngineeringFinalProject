class AmazonAPI

	ENDPOINT = "webservices.amazon.com"
	REQUEST_URI = "/onca/xml"

	public
	def generate_request_url(params)
		params["Timestamp"] = Time.now.gmtime.iso8601 if !params.key?("Timestamp")
		canonical_query_string = params.sort.collect do |key, value|
			[URI.escape(key.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]")),
			 URI.escape(value.to_s, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))].join('=')
			end.join('&')
			string_to_sign = "GET\n#{ENDPOINT}\n#{REQUEST_URI}\n#{canonical_query_string}"
			signature = Base64.encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'),
			"chm0FUr0BjhNGENun8B/pbDfCeI2jTBJCZ2lNkNn", string_to_sign)).strip()
			request_url = "http://#{ENDPOINT}#{REQUEST_URI}?#{canonical_query_string}&Signature=#{URI.escape(signature,
			 Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))}"
	end


public
	def by_keyword(keyword)
		params = {
		  
		"Service" => "AWSECommerceService",
  		"Operation" => "ItemSearch",
  		"AWSAccessKeyId" => "AKIAI5PILTO524I5VBAA",
  		"AssociateTag" => "maury1226-20",
  		"SearchIndex" => "Books",
  		"Keywords" => keyword,
  		"ResponseGroup" => "Images,ItemAttributes,Offers"
	}
	 generate_request_url(params)
	end

end