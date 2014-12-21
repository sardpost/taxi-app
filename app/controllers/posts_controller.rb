class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all
    respond_with(@post)
  end

  def show
    respond_with(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :image)
  #  params.require(:post).permit(:title, :description)
  end

end
