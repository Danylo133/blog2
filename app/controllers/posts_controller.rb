class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to @post
    else
      @categories = Category.all
      render :new
    end
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def show
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      @categories = Category.all
      render :edit
    end
  end

  def destroy
    @post.destroy

    redirect_to posts_path

  end

  def show_subjects
    @category = Category.find(params[:id])
  end


  private

  def post_params
    params.require(:post).permit(:title, :text, :category_id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
