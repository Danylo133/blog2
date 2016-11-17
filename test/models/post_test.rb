require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post with title less 5" do
    post = Post.new
    post.title = "FT"
    post.category = Category.all[0]
    post.text = "Fake text"
    assert_not post.save, "Saved the article without a title"
  end

  test "should not save without category" do
    post = Post.new
    post.title = "Fake Title"
    post.text = "Fake text"
    assert_not post.save
  end

  test "should not save without text" do
    post =Post.new
    post.title = "Fake Title"
    post.category = Category.all[0]
    assert_not post.save
  end
end
