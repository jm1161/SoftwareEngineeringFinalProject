require 'test_helper'

class BuyBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buy_books_index_url
    assert_response :success
  end

end
