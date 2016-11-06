class PostsController < ApplicationController
  before_action :authenticate_user!


  def index
  @posts = Post.all
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)

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
    @post = Post.find(params[:id])
    @categories = Category.all
  end

  def show
    @post =Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      @categories = Category.all
      render :edit
      end
    end

  def destroy
   @post = Post.find(params[:id])
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

end
