require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post with title less 5" do
   post = Post.new
   post.title = "sd"
   post.category = Category.all[0]
   post.text = "dfgdfgdfgdfg"
   assert_not post.save, "Saved the article without a title"
  end

  test "should not save without category" do
      post = Post.new
  post.title = "ddddddd"
    post.text = "jdjdjbj"
    assert_not post.save
  end
end
