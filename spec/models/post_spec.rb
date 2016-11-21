require 'rails_helper'

describe Post do
    it "has a valid factory" do
      expect(build(:post)).to be_valid
    end

  it "is valid with a title, text, category" do
    post = Post.new(
        title: 'Fake title',
        text: 'Fake post',)
    post.category = Category.all[0]
    expect(post).to be_valid
  end

  it "is invalid without title" do
    post = Post.new(title: nil)
    post.valid?
    expect(post.errors[:title]).to include ("can't be blank")
  end

  it "is invalid without text" do
    post = Post.new(text: nil)
    post.valid?
    expect(post.errors[:text]).to include ("can't be blank")
  end

    it "is invalid without category" do
   post = build(:post, category: nil)
    post.valid?
    expect(post).to be_invalid
  end
end