require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get posts" do
    get categories_posts_url
    assert_response :success
  end

end
