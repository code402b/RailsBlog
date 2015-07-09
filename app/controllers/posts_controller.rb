class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create

    @post = current_user.posts.create(params[:post])

    flash[:notice] = "Post Created"

    redirect_to posts_path
  end
end