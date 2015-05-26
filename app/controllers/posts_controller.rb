class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc)
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
end