require 'test_helper'

class SellBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sell_books_index_url
    assert_response :success
  end

end
