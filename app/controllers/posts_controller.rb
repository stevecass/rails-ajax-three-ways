class PostsController < ApplicationController
  def index
    @posts = BlogPost.all.order(id: :desc)
  end
end