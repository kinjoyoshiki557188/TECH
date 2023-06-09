class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @answer = Answer.new
    @answers = @post.answers

  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to post: :index
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :name)
  end
end
