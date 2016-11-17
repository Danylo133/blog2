require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "shoud not save comment without text" do
    comment = Comment.new
    comment.commenter = "fake_commenter"
    comment.body =""
    assert_not comment.save
  end
  end
