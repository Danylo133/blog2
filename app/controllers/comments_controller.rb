class CommentsController < ApplicationController
  before_action :set_comments, only: [:edit, :update, :destroy]


  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comment.user = current_user
    @comment.commenter = current_user.name
    @comment.save
    redirect_to post_path(@post)
  end

  def show
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to post_path(@post)
    end
  end


  def destroy
    @comment.destroy

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :id, :post_id)
  end

  def set_comments
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end
end

